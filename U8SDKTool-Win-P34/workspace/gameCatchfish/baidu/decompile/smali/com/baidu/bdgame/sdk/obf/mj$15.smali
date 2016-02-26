.class final Lcom/baidu/bdgame/sdk/obf/mj$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/mj;->a(Landroid/app/Activity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/mj;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/mj;)V
    .registers 2

    .prologue
    .line 264
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/mj$15;->a:Lcom/baidu/bdgame/sdk/obf/mj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 269
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mj$15;->a:Lcom/baidu/bdgame/sdk/obf/mj;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/mj;->k()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/bq;->a(Landroid/content/Context;I)V

    .line 271
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/mj$15$1;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/mj$15;->a:Lcom/baidu/bdgame/sdk/obf/mj;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/mj;->k()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/baidu/bdgame/sdk/obf/mj$15$1;-><init>(Lcom/baidu/bdgame/sdk/obf/mj$15;Landroid/content/Context;)V

    .line 287
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/mj$15;->a:Lcom/baidu/bdgame/sdk/obf/mj;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/baidu/bdgame/sdk/obf/mj;->a(Ljava/lang/String;)V

    .line 288
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/mj$15;->a:Lcom/baidu/bdgame/sdk/obf/mj;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/mj;->k()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/baidu/bdgame/sdk/obf/bl;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/bi;)Lcom/baidu/bdgame/sdk/obf/bk;

    .line 289
    return-void
.end method
