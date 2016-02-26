.class final Lcom/baidu/platformsdk/BDPlatformService$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/platformsdk/BDPlatformService;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/baidu/bdgame/sdk/obf/n",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/platformsdk/BDPlatformService;


# direct methods
.method constructor <init>(Lcom/baidu/platformsdk/BDPlatformService;)V
    .registers 2

    .prologue
    .line 68
    iput-object p1, p0, Lcom/baidu/platformsdk/BDPlatformService$1;->a:Lcom/baidu/platformsdk/BDPlatformService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 68
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/platformsdk/BDPlatformService$1;->a(ILjava/lang/String;Ljava/lang/Void;)V

    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/Void;)V
    .registers 6

    .prologue
    .line 73
    if-nez p1, :cond_12

    .line 74
    const-class v0, Lcom/baidu/platformsdk/BDPlatformService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "keep alive success, continue"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/la;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/baidu/platformsdk/BDPlatformService$1;->a:Lcom/baidu/platformsdk/BDPlatformService;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/jz;->c(Landroid/content/Context;)V

    .line 82
    :cond_12
    iget-object v0, p0, Lcom/baidu/platformsdk/BDPlatformService$1;->a:Lcom/baidu/platformsdk/BDPlatformService;

    invoke-virtual {v0}, Lcom/baidu/platformsdk/BDPlatformService;->stopSelf()V

    .line 83
    return-void
.end method
