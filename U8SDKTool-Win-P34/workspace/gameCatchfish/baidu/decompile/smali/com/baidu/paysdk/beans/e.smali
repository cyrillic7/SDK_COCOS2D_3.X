.class public Lcom/baidu/paysdk/beans/e;
.super Lcom/baidu/wallet/core/beans/BaseBean;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/baidu/wallet/core/beans/BaseBean;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public execBean()V
    .registers 2

    const-class v0, Lcom/baidu/paysdk/datamodel/ScoreTipResponse;

    invoke-super {p0, v0}, Lcom/baidu/wallet/core/beans/BaseBean;->execBean(Ljava/lang/Class;)V

    return-void
.end method

.method public generateRequestParam()Ljava/util/List;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getBeanId()I
    .registers 2

    const/16 v0, 0xf

    return v0
.end method

.method public getHttpMethod()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    const-string v0, "http://co.baifubao.com/content/mywallet/mobile/score_tip.cfg"

    return-object v0
.end method
