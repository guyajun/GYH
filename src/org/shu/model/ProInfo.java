package org.shu.model;

import java.sql.Timestamp;
import java.util.HashSet;
import java.util.Set;

/**
 * ProInfo entity. @author MyEclipse Persistence Tools
 */

public class ProInfo implements java.io.Serializable {

	// Fields

	private Integer id;
	private ProInfo proInfo;
	private String proCode;
	private String proName;
	private String proType;
	private Integer gpCount;
	private String startGpId;
	private String endGpId;
	private Double gkTltp;
	private Double gkTllg;
	private Double gkOtdm;
	private String gkSdtp;
	private Double gkSddm;
	private Double gkSdlg;
	private Integer gkStrg;
	private String gkStdt;
	private String gkLayer;
	private String gkAxspic1;
	private String gkAxspic2;
	private String gkPzxs;
	private String gkXt;
	private String gkCst;
	private String gkSpt;
	private String gkBld;
	private String gkCstmg;
	private String gkSptmg;
	private String gkBldmg;
	private String description;
	private String directorId;
	private String directorPhone;
	private String levelOneId;
	private String levelTwoId;
	private String proStatus;
	private String proBlock;
	private String importantPro;
	private String keyFocus;
	private String proClass;
	private String provincePro;
	private String url;
	private String produceUnit;
	private String buildUnit;
	private String designUnit;
	private String manageUnit;
	private String constructUnit;
	private Timestamp buildTime;
	private Timestamp completeTime;
	private String creatorId;
	private Timestamp createTime;
	private String modifierId;
	private Timestamp modifyTime;
	private String memo;
	private Integer isEast;
	private Set proInfos = new HashSet(0);
	private Set concRcvds = new HashSet(0);

	// Constructors

	/** default constructor */
	public ProInfo() {
	}

	/** full constructor */
	public ProInfo(ProInfo proInfo, String proCode, String proName,
			String proType, Integer gpCount, String startGpId, String endGpId,
			Double gkTltp, Double gkTllg, Double gkOtdm, String gkSdtp,
			Double gkSddm, Double gkSdlg, Integer gkStrg, String gkStdt,
			String gkLayer, String gkAxspic1, String gkAxspic2, String gkPzxs,
			String gkXt, String gkCst, String gkSpt, String gkBld,
			String gkCstmg, String gkSptmg, String gkBldmg, String description,
			String directorId, String directorPhone, String levelOneId,
			String levelTwoId, String proStatus, String proBlock,
			String importantPro, String keyFocus, String proClass,
			String provincePro, String url, String produceUnit,
			String buildUnit, String designUnit, String manageUnit,
			String constructUnit, Timestamp buildTime, Timestamp completeTime,
			String creatorId, Timestamp createTime, String modifierId,
			Timestamp modifyTime, String memo, Integer isEast, Set proInfos,
			Set concRcvds) {
		this.proInfo = proInfo;
		this.proCode = proCode;
		this.proName = proName;
		this.proType = proType;
		this.gpCount = gpCount;
		this.startGpId = startGpId;
		this.endGpId = endGpId;
		this.gkTltp = gkTltp;
		this.gkTllg = gkTllg;
		this.gkOtdm = gkOtdm;
		this.gkSdtp = gkSdtp;
		this.gkSddm = gkSddm;
		this.gkSdlg = gkSdlg;
		this.gkStrg = gkStrg;
		this.gkStdt = gkStdt;
		this.gkLayer = gkLayer;
		this.gkAxspic1 = gkAxspic1;
		this.gkAxspic2 = gkAxspic2;
		this.gkPzxs = gkPzxs;
		this.gkXt = gkXt;
		this.gkCst = gkCst;
		this.gkSpt = gkSpt;
		this.gkBld = gkBld;
		this.gkCstmg = gkCstmg;
		this.gkSptmg = gkSptmg;
		this.gkBldmg = gkBldmg;
		this.description = description;
		this.directorId = directorId;
		this.directorPhone = directorPhone;
		this.levelOneId = levelOneId;
		this.levelTwoId = levelTwoId;
		this.proStatus = proStatus;
		this.proBlock = proBlock;
		this.importantPro = importantPro;
		this.keyFocus = keyFocus;
		this.proClass = proClass;
		this.provincePro = provincePro;
		this.url = url;
		this.produceUnit = produceUnit;
		this.buildUnit = buildUnit;
		this.designUnit = designUnit;
		this.manageUnit = manageUnit;
		this.constructUnit = constructUnit;
		this.buildTime = buildTime;
		this.completeTime = completeTime;
		this.creatorId = creatorId;
		this.createTime = createTime;
		this.modifierId = modifierId;
		this.modifyTime = modifyTime;
		this.memo = memo;
		this.isEast = isEast;
		this.proInfos = proInfos;
		this.concRcvds = concRcvds;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public ProInfo getProInfo() {
		return this.proInfo;
	}

	public void setProInfo(ProInfo proInfo) {
		this.proInfo = proInfo;
	}

	public String getProCode() {
		return this.proCode;
	}

	public void setProCode(String proCode) {
		this.proCode = proCode;
	}

	public String getProName() {
		return this.proName;
	}

	public void setProName(String proName) {
		this.proName = proName;
	}

	public String getProType() {
		return this.proType;
	}

	public void setProType(String proType) {
		this.proType = proType;
	}

	public Integer getGpCount() {
		return this.gpCount;
	}

	public void setGpCount(Integer gpCount) {
		this.gpCount = gpCount;
	}

	public String getStartGpId() {
		return this.startGpId;
	}

	public void setStartGpId(String startGpId) {
		this.startGpId = startGpId;
	}

	public String getEndGpId() {
		return this.endGpId;
	}

	public void setEndGpId(String endGpId) {
		this.endGpId = endGpId;
	}

	public Double getGkTltp() {
		return this.gkTltp;
	}

	public void setGkTltp(Double gkTltp) {
		this.gkTltp = gkTltp;
	}

	public Double getGkTllg() {
		return this.gkTllg;
	}

	public void setGkTllg(Double gkTllg) {
		this.gkTllg = gkTllg;
	}

	public Double getGkOtdm() {
		return this.gkOtdm;
	}

	public void setGkOtdm(Double gkOtdm) {
		this.gkOtdm = gkOtdm;
	}

	public String getGkSdtp() {
		return this.gkSdtp;
	}

	public void setGkSdtp(String gkSdtp) {
		this.gkSdtp = gkSdtp;
	}

	public Double getGkSddm() {
		return this.gkSddm;
	}

	public void setGkSddm(Double gkSddm) {
		this.gkSddm = gkSddm;
	}

	public Double getGkSdlg() {
		return this.gkSdlg;
	}

	public void setGkSdlg(Double gkSdlg) {
		this.gkSdlg = gkSdlg;
	}

	public Integer getGkStrg() {
		return this.gkStrg;
	}

	public void setGkStrg(Integer gkStrg) {
		this.gkStrg = gkStrg;
	}

	public String getGkStdt() {
		return this.gkStdt;
	}

	public void setGkStdt(String gkStdt) {
		this.gkStdt = gkStdt;
	}

	public String getGkLayer() {
		return this.gkLayer;
	}

	public void setGkLayer(String gkLayer) {
		this.gkLayer = gkLayer;
	}

	public String getGkAxspic1() {
		return this.gkAxspic1;
	}

	public void setGkAxspic1(String gkAxspic1) {
		this.gkAxspic1 = gkAxspic1;
	}

	public String getGkAxspic2() {
		return this.gkAxspic2;
	}

	public void setGkAxspic2(String gkAxspic2) {
		this.gkAxspic2 = gkAxspic2;
	}

	public String getGkPzxs() {
		return this.gkPzxs;
	}

	public void setGkPzxs(String gkPzxs) {
		this.gkPzxs = gkPzxs;
	}

	public String getGkXt() {
		return this.gkXt;
	}

	public void setGkXt(String gkXt) {
		this.gkXt = gkXt;
	}

	public String getGkCst() {
		return this.gkCst;
	}

	public void setGkCst(String gkCst) {
		this.gkCst = gkCst;
	}

	public String getGkSpt() {
		return this.gkSpt;
	}

	public void setGkSpt(String gkSpt) {
		this.gkSpt = gkSpt;
	}

	public String getGkBld() {
		return this.gkBld;
	}

	public void setGkBld(String gkBld) {
		this.gkBld = gkBld;
	}

	public String getGkCstmg() {
		return this.gkCstmg;
	}

	public void setGkCstmg(String gkCstmg) {
		this.gkCstmg = gkCstmg;
	}

	public String getGkSptmg() {
		return this.gkSptmg;
	}

	public void setGkSptmg(String gkSptmg) {
		this.gkSptmg = gkSptmg;
	}

	public String getGkBldmg() {
		return this.gkBldmg;
	}

	public void setGkBldmg(String gkBldmg) {
		this.gkBldmg = gkBldmg;
	}

	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getDirectorId() {
		return this.directorId;
	}

	public void setDirectorId(String directorId) {
		this.directorId = directorId;
	}

	public String getDirectorPhone() {
		return this.directorPhone;
	}

	public void setDirectorPhone(String directorPhone) {
		this.directorPhone = directorPhone;
	}

	public String getLevelOneId() {
		return this.levelOneId;
	}

	public void setLevelOneId(String levelOneId) {
		this.levelOneId = levelOneId;
	}

	public String getLevelTwoId() {
		return this.levelTwoId;
	}

	public void setLevelTwoId(String levelTwoId) {
		this.levelTwoId = levelTwoId;
	}

	public String getProStatus() {
		return this.proStatus;
	}

	public void setProStatus(String proStatus) {
		this.proStatus = proStatus;
	}

	public String getProBlock() {
		return this.proBlock;
	}

	public void setProBlock(String proBlock) {
		this.proBlock = proBlock;
	}

	public String getImportantPro() {
		return this.importantPro;
	}

	public void setImportantPro(String importantPro) {
		this.importantPro = importantPro;
	}

	public String getKeyFocus() {
		return this.keyFocus;
	}

	public void setKeyFocus(String keyFocus) {
		this.keyFocus = keyFocus;
	}

	public String getProClass() {
		return this.proClass;
	}

	public void setProClass(String proClass) {
		this.proClass = proClass;
	}

	public String getProvincePro() {
		return this.provincePro;
	}

	public void setProvincePro(String provincePro) {
		this.provincePro = provincePro;
	}

	public String getUrl() {
		return this.url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getProduceUnit() {
		return this.produceUnit;
	}

	public void setProduceUnit(String produceUnit) {
		this.produceUnit = produceUnit;
	}

	public String getBuildUnit() {
		return this.buildUnit;
	}

	public void setBuildUnit(String buildUnit) {
		this.buildUnit = buildUnit;
	}

	public String getDesignUnit() {
		return this.designUnit;
	}

	public void setDesignUnit(String designUnit) {
		this.designUnit = designUnit;
	}

	public String getManageUnit() {
		return this.manageUnit;
	}

	public void setManageUnit(String manageUnit) {
		this.manageUnit = manageUnit;
	}

	public String getConstructUnit() {
		return this.constructUnit;
	}

	public void setConstructUnit(String constructUnit) {
		this.constructUnit = constructUnit;
	}

	public Timestamp getBuildTime() {
		return this.buildTime;
	}

	public void setBuildTime(Timestamp buildTime) {
		this.buildTime = buildTime;
	}

	public Timestamp getCompleteTime() {
		return this.completeTime;
	}

	public void setCompleteTime(Timestamp completeTime) {
		this.completeTime = completeTime;
	}

	public String getCreatorId() {
		return this.creatorId;
	}

	public void setCreatorId(String creatorId) {
		this.creatorId = creatorId;
	}

	public Timestamp getCreateTime() {
		return this.createTime;
	}

	public void setCreateTime(Timestamp createTime) {
		this.createTime = createTime;
	}

	public String getModifierId() {
		return this.modifierId;
	}

	public void setModifierId(String modifierId) {
		this.modifierId = modifierId;
	}

	public Timestamp getModifyTime() {
		return this.modifyTime;
	}

	public void setModifyTime(Timestamp modifyTime) {
		this.modifyTime = modifyTime;
	}

	public String getMemo() {
		return this.memo;
	}

	public void setMemo(String memo) {
		this.memo = memo;
	}

	public Integer getIsEast() {
		return this.isEast;
	}

	public void setIsEast(Integer isEast) {
		this.isEast = isEast;
	}

	public Set getProInfos() {
		return this.proInfos;
	}

	public void setProInfos(Set proInfos) {
		this.proInfos = proInfos;
	}

	public Set getConcRcvds() {
		return this.concRcvds;
	}

	public void setConcRcvds(Set concRcvds) {
		this.concRcvds = concRcvds;
	}

}