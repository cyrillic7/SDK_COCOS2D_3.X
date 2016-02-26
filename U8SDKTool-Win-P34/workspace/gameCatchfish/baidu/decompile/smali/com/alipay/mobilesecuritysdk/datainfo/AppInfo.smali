.class public Lcom/alipay/mobilesecuritysdk/datainfo/AppInfo;
.super Ljava/lang/Object;
.source "AppInfo.java"


# instance fields
.field private pkeyhash:Ljava/lang/String;

.field private pkgName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPkeyhash()Ljava/lang/String;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alipay/mobilesecuritysdk/datainfo/AppInfo;->pkeyhash:Ljava/lang/String;

    return-object v0
.end method

.method public getPkgName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alipay/mobilesecuritysdk/datainfo/AppInfo;->pkgName:Ljava/lang/String;

    return-object v0
.end method

.method public setPkeyhash(Ljava/lang/String;)V
    .registers 2
    .param p1, "pkeyhash"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/alipay/mobilesecuritysdk/datainfo/AppInfo;->pkeyhash:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setPkgName(Ljava/lang/String;)V
    .registers 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/alipay/mobilesecuritysdk/datainfo/AppInfo;->pkgName:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public validate()Z
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/alipay/mobilesecuritysdk/datainfo/AppInfo;->pkgName:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobilesecuritysdk/util/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/alipay/mobilesecuritysdk/datainfo/AppInfo;->pkeyhash:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobilesecuritysdk/util/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 25
    :cond_10
    const/4 v0, 0x0

    .line 27
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x1

    goto :goto_11
.end method
