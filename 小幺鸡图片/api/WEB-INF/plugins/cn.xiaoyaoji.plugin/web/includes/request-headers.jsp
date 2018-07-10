<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script type="text/template"  id="request-headers-template" class="hide">
    <div v-bind:class="{'div-editing-table':editing,'request-headers':true}" class="placeholder-request-headers" :data-pid="pid" :data-module-name="name">
    <div class="div-table-line " v-bind:class="{'div-editing-line':editing}" v-for="item in requestHeaders" :key="item.id"  :data-id="item.id">
        <div v-if="editing">
        <ul class="cb">
            <li class="col-sm-1">
                <i class="iconfont icon-close" v-on:click="removeRow(item,requestHeaders)"></i>
                <i class="iconfont icon-drag-copy" v-on:dragstart="dragstart(requestHeaders,item)"></i>
            </li>
            <li class="col-sm-3 input"><input type="text" list="headerlist" class="text name" v-model="item.name" :value="item.name"></li>
            <li class="col-sm-2"><select v-model="item.require">
                <option value="true">true</option>
                <option value="false">false</option>
            </select></li>
            <li class="col-sm-2 input"><input type="text" class="text" v-model="item.defaultValue" :value="item.defaultValue"></li>
            <li class="col-sm-4 input"><input type="text" class="text" v-model="item.description" :value="item.description"></li>
        </ul>
        </div>
        <div v-else>
        <ul class="cb">
            <li class="col-sm-2 name full-height">
                <template v-if="item.type &&( item.type=='object' || item.type.indexOf('array')!=-1)">
                    <i class="iconfont icon-my open" v-on:click="apiArgsColumnFold($event)"></i>
                </template>
                <div class="w-block">
                    <div class="w-item">{{item.name}}</div>
                </div>
            </li>
            <li class="col-sm-1">&nbsp;{{item.require || 'false' }} </li>
            <li class="col-sm-2" :title="item.defaultValue">
                <div class="w-block">
                    <div class="w-item">{{item.defaultValue}}</div>
                </div>
            </li>
            <li class="col-sm-7 full-height" :title="item.description">
                <div class="w-block">
                    <div class="w-item">{{item.description}}</div>
                </div>
            </li>
        </ul>
        </div>

        <div class="sub">
            <request-headers-vue v-bind:request-headers.sync="item.children" v-bind:editing="editing"></request-headers-vue>
        </div>
    </div>
    </div>
</script>
<script>
    requirejs(['vue','${ctx}/proxy/${pluginInfo.id}/assets/js/table.js?v=${pluginInfo.version}'],function(Vue,table){
        table = $.extend(true,{},table);
        table.template=document.getElementById('request-headers-template').innerHTML;
        table.props=['requestHeaders','editing','name','pid'];
        Vue.component('RequestHeadersVue',table);
    });
</script>
