.class public Lcom/baidu/wallet/core/beans/BeanResponseString;
.super Lcom/baidu/wallet/core/beans/BeanResponseBase;


# instance fields
.field public content:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/baidu/wallet/core/beans/BeanResponseBase;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/wallet/core/beans/BeanResponseString;->content:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getRealResponseConstent()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/wallet/core/beans/BeanResponseString;->content:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/baidu/wallet/core/beans/BeanResponseString;->content:Ljava/lang/String;

    :goto_6
    return-object v0

    :cond_7
    const-string v0, ""

    goto :goto_6
.end method

.method public getToken()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/wallet/core/beans/BeanResponseString;->token:Ljava/lang/String;

    return-object v0
.end method
