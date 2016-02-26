.class public Lcom/u8/sdk/plugin/U8User;
.super Ljava/lang/Object;
.source "U8User.java"


# static fields
.field private static instance:Lcom/u8/sdk/plugin/U8User;


# instance fields
.field private userPlugin:Lcom/u8/sdk/IUser;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/u8/sdk/plugin/U8User;
    .locals 1

    sget-object v0, Lcom/u8/sdk/plugin/U8User;->instance:Lcom/u8/sdk/plugin/U8User;

    if-nez v0, :cond_0

    new-instance v0, Lcom/u8/sdk/plugin/U8User;

    invoke-direct {v0}, Lcom/u8/sdk/plugin/U8User;-><init>()V

    sput-object v0, Lcom/u8/sdk/plugin/U8User;->instance:Lcom/u8/sdk/plugin/U8User;

    :cond_0
    sget-object v0, Lcom/u8/sdk/plugin/U8User;->instance:Lcom/u8/sdk/plugin/U8User;

    return-object v0
.end method


# virtual methods
.method public exit()V
    .locals 1

    iget-object v0, p0, Lcom/u8/sdk/plugin/U8User;->userPlugin:Lcom/u8/sdk/IUser;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/u8/sdk/plugin/U8User;->userPlugin:Lcom/u8/sdk/IUser;

    invoke-interface {v0}, Lcom/u8/sdk/IUser;->exit()V

    goto :goto_0
.end method

.method public init()V
    .locals 2

    invoke-static {}, Lcom/u8/sdk/PluginFactory;->getInstance()Lcom/u8/sdk/PluginFactory;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/u8/sdk/PluginFactory;->initPlugin(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/u8/sdk/IUser;

    iput-object v0, p0, Lcom/u8/sdk/plugin/U8User;->userPlugin:Lcom/u8/sdk/IUser;

    return-void
.end method

.method public isSupport(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/u8/sdk/plugin/U8User;->userPlugin:Lcom/u8/sdk/IUser;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/u8/sdk/plugin/U8User;->userPlugin:Lcom/u8/sdk/IUser;

    invoke-interface {v0, p1}, Lcom/u8/sdk/IUser;->isSupportMethod(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public login()V
    .locals 1

    iget-object v0, p0, Lcom/u8/sdk/plugin/U8User;->userPlugin:Lcom/u8/sdk/IUser;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/u8/sdk/plugin/U8User;->userPlugin:Lcom/u8/sdk/IUser;

    invoke-interface {v0}, Lcom/u8/sdk/IUser;->login()V

    goto :goto_0
.end method

.method public login(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/u8/sdk/plugin/U8User;->userPlugin:Lcom/u8/sdk/IUser;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/u8/sdk/plugin/U8User;->userPlugin:Lcom/u8/sdk/IUser;

    invoke-interface {v0, p1}, Lcom/u8/sdk/IUser;->loginCustom(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public logout()V
    .locals 1

    iget-object v0, p0, Lcom/u8/sdk/plugin/U8User;->userPlugin:Lcom/u8/sdk/IUser;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/u8/sdk/plugin/U8User;->userPlugin:Lcom/u8/sdk/IUser;

    invoke-interface {v0}, Lcom/u8/sdk/IUser;->logout()V

    goto :goto_0
.end method

.method public showAccountCenter()V
    .locals 1

    iget-object v0, p0, Lcom/u8/sdk/plugin/U8User;->userPlugin:Lcom/u8/sdk/IUser;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/u8/sdk/plugin/U8User;->userPlugin:Lcom/u8/sdk/IUser;

    invoke-interface {v0}, Lcom/u8/sdk/IUser;->showAccountCenter()Z

    goto :goto_0
.end method

.method public submitExtraData(Lcom/u8/sdk/UserExtraData;)V
    .locals 1

    iget-object v0, p0, Lcom/u8/sdk/plugin/U8User;->userPlugin:Lcom/u8/sdk/IUser;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/u8/sdk/plugin/U8User;->userPlugin:Lcom/u8/sdk/IUser;

    invoke-interface {v0, p1}, Lcom/u8/sdk/IUser;->submitExtraData(Lcom/u8/sdk/UserExtraData;)V

    goto :goto_0
.end method

.method public switchLogin()V
    .locals 1

    iget-object v0, p0, Lcom/u8/sdk/plugin/U8User;->userPlugin:Lcom/u8/sdk/IUser;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/u8/sdk/plugin/U8User;->userPlugin:Lcom/u8/sdk/IUser;

    invoke-interface {v0}, Lcom/u8/sdk/IUser;->switchLogin()V

    goto :goto_0
.end method
