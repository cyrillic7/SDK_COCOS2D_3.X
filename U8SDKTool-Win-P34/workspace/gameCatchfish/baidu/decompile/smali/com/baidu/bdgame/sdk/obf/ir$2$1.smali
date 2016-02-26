.class final Lcom/baidu/bdgame/sdk/obf/ir$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/ir$2;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/baidu/bdgame/sdk/obf/ir$2;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/ir$2;Z)V
    .registers 3

    .prologue
    .line 271
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ir$2$1;->b:Lcom/baidu/bdgame/sdk/obf/ir$2;

    iput-boolean p2, p0, Lcom/baidu/bdgame/sdk/obf/ir$2$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 275
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ir$2$1;->b:Lcom/baidu/bdgame/sdk/obf/ir$2;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/ir$2;->a:Lcom/baidu/platformsdk/pay/widget/ScreenSizeObRelativeLayout$a;

    if-eqz v0, :cond_f

    .line 276
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ir$2$1;->b:Lcom/baidu/bdgame/sdk/obf/ir$2;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/ir$2;->a:Lcom/baidu/platformsdk/pay/widget/ScreenSizeObRelativeLayout$a;

    iget-boolean v1, p0, Lcom/baidu/bdgame/sdk/obf/ir$2$1;->a:Z

    invoke-interface {v0, v1}, Lcom/baidu/platformsdk/pay/widget/ScreenSizeObRelativeLayout$a;->a(Z)V

    .line 278
    :cond_f
    return-void
.end method
