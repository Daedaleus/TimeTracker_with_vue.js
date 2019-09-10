import Vue from 'vue/dist/vue.esm'
import TurbolinksAdapter from 'vue-turbolinks'
import VueResource from 'vue-resource'

Vue.use(VueResource)

document.addEventListener('turbolinks:load', () => {
  Vue.http.headers.common['X-CSRF-Token'] = document.querySelector('meta[name="csrf-token"]').getAttribute('content')

  var element = document.getElementById("project_form")

  if (element != null) {

    var id = element.dataset.id
    var project = JSON.parse(element.dataset.project)
    var work_logs_attributes = JSON.parse(element.dataset.workLogsAttributes)
    work_logs_attributes.forEach(function(work_log){ work_log._destroy = null })
    project.work_logs_attributes = work_logs_attributes

    const app = new Vue({
      el: element,
      data: function () {
        return {id: id, project: project}
      },
      mixin: TurbolinksAdapter,
      methods:{
        addWorkLog: function(){
          project.work_logs_attributes.push({
            id: null,
            day: new Date(),
            hours: 0,
            _destroy: null
          })
        },

        removeWorkLog: function (index) {
          var work_log = this.project.work_logs_attributes[index]
          if(work_log.id == null){
            this.project.work_logs_attributes.splice(index, 1)
          } else {
            this.project.work_logs_attributes[index]._destroy = '1'
          }
        },

        undoRemove: function (index) {
          this.project.work_logs_attributes[index]._destroy = null
        },

        saveProject: function () {
          if (this.id == null){
            // Create a new project
            this.$http.post('/projects', {project: this.project}).then(response => {
              console.log(response)
              Turbolinks.visit(`/projects/${response.body.id}`)
            }, response => {
              console.log(response)
            })
          } else{
            // Edit an existing project
            this.$http.put(`/projects/${this.id}`, {project: this.project}).then(response => {
              console.log(response)
              Turbolinks.visit(`/projects/${response.body.id}`)
            }, response => {
              console.log(response)
            })
          }

        }
      }
    })

  }
})
