const base = {
    get() {
        return {
            url : "http://localhost:8080/springboot760av/",
            name: "springboot760av",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/springboot760av/front/index.html'
        };
    },
    getProjectName(){
        return {
            projectName: "少儿编程管理系统"
        } 
    }
}
export default base
