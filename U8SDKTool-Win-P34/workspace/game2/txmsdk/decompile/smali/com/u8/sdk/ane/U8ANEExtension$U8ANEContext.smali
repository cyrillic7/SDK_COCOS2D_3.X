.class public Lcom/u8/sdk/ane/U8ANEExtension$U8ANEContext;
.super Lcom/adobe/fre/FREContext;
.source "U8ANEExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/u8/sdk/ane/U8ANEExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "U8ANEContext"
.end annotation


# instance fields
.field private isSwitchAccount:Z

.field final synthetic this$0:Lcom/u8/sdk/ane/U8ANEExtension;


# direct methods
.method public constructor <init>(Lcom/u8/sdk/ane/U8ANEExtension;)V
    .locals 1

    iput-object p1, p0, Lcom/u8/sdk/ane/U8ANEExtension$U8ANEContext;->this$0:Lcom/u8/sdk/ane/U8ANEExtension;

    invoke-direct {p0}, Lcom/adobe/fre/FREContext;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/u8/sdk/ane/U8ANEExtension$U8ANEContext;->isSwitchAccount:Z

    return-void
.end method

.method static synthetic access$0(Lcom/u8/sdk/ane/U8ANEExtension$U8ANEContext;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/u8/sdk/ane/U8ANEExtension$U8ANEContext;->isSwitchAccount:Z

    return-void
.end method

.method static synthetic access$1(Lcom/u8/sdk/ane/U8ANEExtension$U8ANEContext;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/u8/sdk/ane/U8ANEExtension$U8ANEContext;->isSwitchAccount:Z

    return v0
.end method

.method static synthetic access$2(Lcom/u8/sdk/ane/U8ANEExtension$U8ANEContext;)Lcom/u8/sdk/ane/U8ANEExtension;
    .locals 1

    iget-object v0, p0, Lcom/u8/sdk/ane/U8ANEExtension$U8ANEContext;->this$0:Lcom/u8/sdk/ane/U8ANEExtension;

    return-object v0
.end method


# virtual methods
.method public dispose()V
    .locals 0

    return-void
.end method

.method public getFunctions()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/fre/FREFunction;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "u8_init"

    new-instance v2, Lcom/u8/sdk/ane/U8Function;

    const-string v3, "u8_init"

    invoke-direct {v2, v3}, Lcom/u8/sdk/ane/U8Function;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "u8_login"

    new-instance v2, Lcom/u8/sdk/ane/U8Function;

    const-string v3, "u8_login"

    invoke-direct {v2, v3}, Lcom/u8/sdk/ane/U8Function;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "u8_pay"

    new-instance v2, Lcom/u8/sdk/ane/U8Function;

    const-string v3, "u8_pay"

    invoke-direct {v2, v3}, Lcom/u8/sdk/ane/U8Function;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "u8_switchLogin"

    new-instance v2, Lcom/u8/sdk/ane/U8Function;

    const-string v3, "u8_switchLogin"

    invoke-direct {v2, v3}, Lcom/u8/sdk/ane/U8Function;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "u8_logout"

    new-instance v2, Lcom/u8/sdk/ane/U8Function;

    const-string v3, "u8_logout"

    invoke-direct {v2, v3}, Lcom/u8/sdk/ane/U8Function;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "u8_submitExtraData"

    new-instance v2, Lcom/u8/sdk/ane/U8Function;

    const-string v3, "u8_submitExtraData"

    invoke-direct {v2, v3}, Lcom/u8/sdk/ane/U8Function;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "u8_exit"

    new-instance v2, Lcom/u8/sdk/ane/U8Function;

    const-string v3, "u8_exit"

    invoke-direct {v2, v3}, Lcom/u8/sdk/ane/U8Function;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public initSDKListener()V
    .locals 2

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    new-instance v1, Lcom/u8/sdk/ane/U8ANEExtension$U8ANEContext$1;

    invoke-direct {v1, p0}, Lcom/u8/sdk/ane/U8ANEExtension$U8ANEContext$1;-><init>(Lcom/u8/sdk/ane/U8ANEExtension$U8ANEContext;)V

    invoke-virtual {v0, v1}, Lcom/u8/sdk/U8SDK;->setSDKListener(Lcom/u8/sdk/IU8SDKListener;)V

    return-void
.end method
