.class final Lcom/baidu/bdgame/sdk/obf/mo$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/mo;->a(Landroid/app/Activity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/mo;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/mo;)V
    .registers 2

    .prologue
    .line 38
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/mo$1;->a:Lcom/baidu/bdgame/sdk/obf/mo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mo$1;->a:Lcom/baidu/bdgame/sdk/obf/mo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/mo;->b(Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 43
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mo$1;->a:Lcom/baidu/bdgame/sdk/obf/mo;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/mo;->j()V

    .line 45
    :cond_e
    return-void
.end method
