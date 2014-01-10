<%@ page contentType="text/html;charset=gb2312"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<html>
  <head> 
  <link rel="stylesheet" type="text/css" href="../themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="../themes/icon.css">
	<link rel="stylesheet" type="text/css" href="../css/demo.css">
  </head>
  <body>
  <div>
		<table id="tt" class="easyui-datagrid"  style="width:1190px;height:380px;overflow:scroll">
		    <thead>
			    <tr>
				    <th data-options="field:'gpId',width:200" align="center">管片编号</th>				    
				    <th data-options="field:'virtualLoopId',width:80" align="center">生产流水环号</th>			  
				    <th data-options="field:'steelRawReportId',width:100" align="center">钢筋原材料</th>
				    <th data-options="field:'steelQualReportId',width:100" align="center">钢筋质量证明书</th>
				    <th data-options="field:'concQual',width:100" align="center">混凝土质量证明书</th>
				    <th data-options="field:'concMix',width:100" align="center">混凝土配比通知单</th>
				    <th data-options="field:'preEmbed',width:100" align="center">预埋件质量证明书</th>
				    <th data-options="field:'concResistCompReportId',width:100" align="center">混凝土抗压</th>
				    <th data-options="field:'concResistLeakId',width:100" align="center">混凝土抗渗</th>
				    <th data-options="field:'steelProcessReportId',width:100" align="center">钢筋加工</th>
				    <th data-options="field:'steelSkelHalfReportId',width:100" align="center">钢筋骨架半成品</th>
				    <th data-options="field:'steelSkelQualReportId',width:100" align="center">钢筋骨架制作</th>
				    <th data-options="field:'gpAppeSizeReportId',width:100" align="center">管片外观</th>
				    <th data-options="field:'moldQualReportId',width:100" align="center">钢模质量检查</th>
				    <th data-options="field:'concPourReportId',width:100" align="center">混凝土浇注</th>
				    <th data-options="field:'gpSteamCuringId',width:100" align="center">管片蒸养</th>
				    <th data-options="field:'waterCuringReportId',width:100" align="center">管片水养</th>
				    <th data-options="field:'assemReportId',width:100" align="center">水平拼装</th>
				    <th data-options="field:'checkLeakReportId',width:100" align="center">检漏</th>					   
			    </tr>
		    </thead>
		    <s:iterator  value="#request.gplist" id="c2">
		    <tr>
			   <td width="200px"><s:property value="#c2.gpId" /></td> 		
			   <td><s:property value="#c2.produceLoop" /></td>	
			   <s:if test="#c2.steelRawReportId > 0 ">
			   <td><a href="findSteelRaw.action?gpTotalInfo.gpId=<s:property value="#c2.gpId"/>"><font color=#0000ff>详细</font></a></td> 	
			   </s:if>	
			    <s:else>
			   <td>详细</td>
			   </s:else>     
			    <s:if test="#c2.steelQualReportId > 0 ">
			   <td><a href="findSteelQual.action?gpTotalInfo.gpId=<s:property value="#c2.gpId"/>"><font color=#0000ff>详细</font></a></td> 
			   </s:if>	
			    <s:else>
			   <td>详细</td>
			   </s:else>  

 <s:if test="#c2.concQual > 0 ">
			   <td><a href="findConcQual.action?gpTotalInfo.gpId=<s:property value="#c2.gpId"/>"><font color=#0000ff>详细</font></a></td> 
	</s:if>	
			    <s:else>
			   <td>详细</td>
			   </s:else>
	 <s:if test="#c2.concMixRatioId > 0 ">
			   <td><a href="findConcMix.action?gpTotalInfo.gpId=<s:property value="#c2.gpId"/>"><font color=#0000ff>详细</font></a></td> 
			   </s:if>
			    <s:else>
			   <td>详细</td>
			   </s:else>
			   
			   <s:if test="#c2.concQual > 0 ">
			   <td><a href="findPreEmbed.action?gpTotalInfo.gpId=<s:property value="#c2.gpId"/>"><font color=#0000ff>详细</font></a></td> 
			   </s:if>	
			    <s:else>
			   <td>详细</td>
			   </s:else>
			   
			  <s:if test="#c2.concResistCompReportId > 0 ">
			   <td><a href="findConcResist.action?gpTotalInfo.gpId=<s:property value="#c2.gpId"/>"><font color=#0000ff>详细</font></a></td> 
			   </s:if>
			   <s:else>
			   <td>详细</td>
			   </s:else>
		       <td><a href="../uploadfile/<s:property value="concResistLeakId"/>"><s:property value="#c2.concResistLeakId" /></a></td> 		
		       <td><a href="../uploadfile/<s:property value="steelProcessReportId"/>"><s:property value="#c2.steelProcessReportId"/></a></td>
		       <td><a href="../uploadfile/<s:property value="steelSkelHalfReportId"/>"><s:property value="#c2.steelSkelHalfReportId"/></a></td>
		       <td><a href="../uploadfile/<s:property value="steelSkelQualReportId"/>"><s:property value="#c2.steelSkelQualReportId"/></a></td>	
		       <td><a href="../uploadfile/<s:property value="gpAppeSizeReportId"/>"><s:property value="#c2.gpAppeSizeReportId"/></a></td>	
               <td><a href="../uploadfile/<s:property value="moldQualReportId"/>"><s:property value="#c2.moldQualReportId"/></a></td>			       	        
	           <td><a href="../uploadfile/<s:property value="concPourReportId"/>"><s:property value="#c2.concPourReportId"/></a></td>
	           <td><a href="../uploadfile/<s:property value="gpSteamCuringId"/>"><s:property value="#c2.gpSteamCuringId"/></a></td>	
	           <td><a href="../uploadfile/<s:property value="waterCuringReportId"/>"><s:property value="#c2.waterCuringReportId"/></a></td>
	 
	           <td><a href="../uploadfile/<s:property value="assemReportId"/>"><s:property value="#c2.assemReportId"/></a></td>		
	               	
	           <td><a href="../uploadfile/<s:property value="checkLeakReportId"/>"><s:property value="#c2.checkLeakReportId"/></a></td>					        
		    </tr>
		    </s:iterator>
	    
	</table>
	</div>

  </body>
</html>
