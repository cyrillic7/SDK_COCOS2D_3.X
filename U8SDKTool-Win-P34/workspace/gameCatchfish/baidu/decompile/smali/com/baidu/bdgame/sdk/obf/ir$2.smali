.class final Lcom/baidu/bdgame/sdk/obf/ir$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/platformsdk/pay/widget/ScreenSizeObRelativeLayout$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/ir;->a(Lcom/baidu/platformsdk/pay/widget/ScreenSizeObRelativeLayout$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/platformsdk/pay/widget/ScreenSizeObRelativeLayout$a;

.field final synthetic b:Lcom/baidu/bdgame/sdk/obf/ir;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/ir;Lcom/baidu/platformsdk/pay/widget/ScreenSizeObRelativeLayout$a;)V
    .registers 3

    .prologue
    .line 265
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ir$2;->b:Lcom/baidu/bdgame/sdk/obf/ir;

    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/ir$2;->a:Lcom/baidu/platformsdk/pay/widget/ScreenSizeObRelativeLayout$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .registers 5

    .prologue
    .line 269
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInputModeOpen "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/la;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ir$2;->b:Lcom/baidu/bdgame/sdk/obf/ir;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/ir;->a:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/ir$2$1;

    invoke-direct {v1, p0, p1}, Lcom/baidu/bdgame/sdk/obf/ir$2$1;-><init>(Lcom/baidu/bdgame/sdk/obf/ir$2;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 280
    return-void
.end method
