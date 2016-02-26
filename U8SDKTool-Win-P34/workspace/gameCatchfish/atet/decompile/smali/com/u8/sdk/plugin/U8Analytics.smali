.class public Lcom/u8/sdk/plugin/U8Analytics;
.super Ljava/lang/Object;
.source "U8Analytics.java"


# static fields
.field private static instance:Lcom/u8/sdk/plugin/U8Analytics;


# instance fields
.field private analyticsPlugin:Lcom/u8/sdk/IAnalytics;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/u8/sdk/plugin/U8Analytics;
    .locals 1

    sget-object v0, Lcom/u8/sdk/plugin/U8Analytics;->instance:Lcom/u8/sdk/plugin/U8Analytics;

    if-nez v0, :cond_0

    new-instance v0, Lcom/u8/sdk/plugin/U8Analytics;

    invoke-direct {v0}, Lcom/u8/sdk/plugin/U8Analytics;-><init>()V

    sput-object v0, Lcom/u8/sdk/plugin/U8Analytics;->instance:Lcom/u8/sdk/plugin/U8Analytics;

    :cond_0
    sget-object v0, Lcom/u8/sdk/plugin/U8Analytics;->instance:Lcom/u8/sdk/plugin/U8Analytics;

    return-object v0
.end method


# virtual methods
.method public bonus(Ljava/lang/String;IDI)V
    .locals 6
    .param p1    # Ljava/lang/String;
    .param p2    # I
    .param p3    # D
    .param p5    # I

    iget-object v0, p0, Lcom/u8/sdk/plugin/U8Analytics;->analyticsPlugin:Lcom/u8/sdk/IAnalytics;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/u8/sdk/plugin/U8Analytics;->analyticsPlugin:Lcom/u8/sdk/IAnalytics;

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/u8/sdk/IAnalytics;->bonus(Ljava/lang/String;IDI)V

    goto :goto_0
.end method

.method public buy(Ljava/lang/String;ID)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # I
    .param p3    # D

    iget-object v0, p0, Lcom/u8/sdk/plugin/U8Analytics;->analyticsPlugin:Lcom/u8/sdk/IAnalytics;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/u8/sdk/plugin/U8Analytics;->analyticsPlugin:Lcom/u8/sdk/IAnalytics;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/u8/sdk/IAnalytics;->buy(Ljava/lang/String;ID)V

    goto :goto_0
.end method

.method public failLevel(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Lcom/u8/sdk/plugin/U8Analytics;->analyticsPlugin:Lcom/u8/sdk/IAnalytics;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/u8/sdk/plugin/U8Analytics;->analyticsPlugin:Lcom/u8/sdk/IAnalytics;

    invoke-interface {v0, p1}, Lcom/u8/sdk/IAnalytics;->failLevel(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public failTask(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Lcom/u8/sdk/plugin/U8Analytics;->analyticsPlugin:Lcom/u8/sdk/IAnalytics;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/u8/sdk/plugin/U8Analytics;->analyticsPlugin:Lcom/u8/sdk/IAnalytics;

    invoke-interface {v0, p1}, Lcom/u8/sdk/IAnalytics;->failTask(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public finishLevel(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Lcom/u8/sdk/plugin/U8Analytics;->analyticsPlugin:Lcom/u8/sdk/IAnalytics;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/u8/sdk/plugin/U8Analytics;->analyticsPlugin:Lcom/u8/sdk/IAnalytics;

    invoke-interface {v0, p1}, Lcom/u8/sdk/IAnalytics;->finishLevel(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public finishTask(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Lcom/u8/sdk/plugin/U8Analytics;->analyticsPlugin:Lcom/u8/sdk/IAnalytics;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/u8/sdk/plugin/U8Analytics;->analyticsPlugin:Lcom/u8/sdk/IAnalytics;

    invoke-interface {v0, p1}, Lcom/u8/sdk/IAnalytics;->finishTask(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public init()V
    .locals 2

    invoke-static {}, Lcom/u8/sdk/PluginFactory;->getInstance()Lcom/u8/sdk/PluginFactory;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/u8/sdk/PluginFactory;->initPlugin(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/u8/sdk/IAnalytics;

    iput-object v0, p0, Lcom/u8/sdk/plugin/U8Analytics;->analyticsPlugin:Lcom/u8/sdk/IAnalytics;

    return-void
.end method

.method public isSupport(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Lcom/u8/sdk/plugin/U8Analytics;->analyticsPlugin:Lcom/u8/sdk/IAnalytics;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/u8/sdk/plugin/U8Analytics;->analyticsPlugin:Lcom/u8/sdk/IAnalytics;

    invoke-interface {v0, p1}, Lcom/u8/sdk/IAnalytics;->isSupportMethod(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public levelup(I)V
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/u8/sdk/plugin/U8Analytics;->analyticsPlugin:Lcom/u8/sdk/IAnalytics;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/u8/sdk/plugin/U8Analytics;->analyticsPlugin:Lcom/u8/sdk/IAnalytics;

    invoke-interface {v0, p1}, Lcom/u8/sdk/IAnalytics;->levelup(I)V

    goto :goto_0
.end method

.method public login(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Lcom/u8/sdk/plugin/U8Analytics;->analyticsPlugin:Lcom/u8/sdk/IAnalytics;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/u8/sdk/plugin/U8Analytics;->analyticsPlugin:Lcom/u8/sdk/IAnalytics;

    invoke-interface {v0, p1}, Lcom/u8/sdk/IAnalytics;->login(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public logout()V
    .locals 1

    iget-object v0, p0, Lcom/u8/sdk/plugin/U8Analytics;->analyticsPlugin:Lcom/u8/sdk/IAnalytics;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/u8/sdk/plugin/U8Analytics;->analyticsPlugin:Lcom/u8/sdk/IAnalytics;

    invoke-interface {v0}, Lcom/u8/sdk/IAnalytics;->logout()V

    goto :goto_0
.end method

.method public pay(DI)V
    .locals 1
    .param p1    # D
    .param p3    # I

    iget-object v0, p0, Lcom/u8/sdk/plugin/U8Analytics;->analyticsPlugin:Lcom/u8/sdk/IAnalytics;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/u8/sdk/plugin/U8Analytics;->analyticsPlugin:Lcom/u8/sdk/IAnalytics;

    invoke-interface {v0, p1, p2, p3}, Lcom/u8/sdk/IAnalytics;->pay(DI)V

    goto :goto_0
.end method

.method public startLevel(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Lcom/u8/sdk/plugin/U8Analytics;->analyticsPlugin:Lcom/u8/sdk/IAnalytics;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/u8/sdk/plugin/U8Analytics;->analyticsPlugin:Lcom/u8/sdk/IAnalytics;

    invoke-interface {v0, p1}, Lcom/u8/sdk/IAnalytics;->startLevel(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startTask(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    iget-object v0, p0, Lcom/u8/sdk/plugin/U8Analytics;->analyticsPlugin:Lcom/u8/sdk/IAnalytics;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/u8/sdk/plugin/U8Analytics;->analyticsPlugin:Lcom/u8/sdk/IAnalytics;

    invoke-interface {v0, p1, p2}, Lcom/u8/sdk/IAnalytics;->startTask(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public use(Ljava/lang/String;ID)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # I
    .param p3    # D

    iget-object v0, p0, Lcom/u8/sdk/plugin/U8Analytics;->analyticsPlugin:Lcom/u8/sdk/IAnalytics;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/u8/sdk/plugin/U8Analytics;->analyticsPlugin:Lcom/u8/sdk/IAnalytics;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/u8/sdk/IAnalytics;->use(Ljava/lang/String;ID)V

    goto :goto_0
.end method
