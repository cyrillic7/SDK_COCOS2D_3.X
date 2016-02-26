.class final Lcom/baidu/bdgame/sdk/obf/du$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/du;->a(Landroid/app/Activity;Lcom/baidu/bdgame/sdk/obf/du$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/baidu/bdgame/sdk/obf/du$a;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/baidu/bdgame/sdk/obf/du$a;)V
    .registers 3

    .prologue
    .line 93
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/du$2;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/du$2;->b:Lcom/baidu/bdgame/sdk/obf/du$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 95
    new-instance v0, Lcom/alipay/sdk/app/PayTask;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/du$2;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/alipay/sdk/app/PayTask;-><init>(Landroid/app/Activity;)V

    .line 96
    invoke-virtual {v0}, Lcom/alipay/sdk/app/PayTask;->checkAccountIfExist()Z

    move-result v0

    .line 97
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/du$2;->b:Lcom/baidu/bdgame/sdk/obf/du$a;

    if-eqz v1, :cond_14

    .line 98
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/du$2;->b:Lcom/baidu/bdgame/sdk/obf/du$a;

    invoke-interface {v1, v0}, Lcom/baidu/bdgame/sdk/obf/du$a;->a(Z)V

    .line 100
    :cond_14
    return-void
.end method
