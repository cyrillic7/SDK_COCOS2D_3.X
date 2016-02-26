.class final Lcom/baidu/bdgame/sdk/obf/dg$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/dg;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/dg;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/dg;)V
    .registers 2

    .prologue
    .line 114
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/dg$1;->a:Lcom/baidu/bdgame/sdk/obf/dg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dg$1;->a:Lcom/baidu/bdgame/sdk/obf/dg;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/dg;->a(Lcom/baidu/bdgame/sdk/obf/dg;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 119
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dg$1;->a:Lcom/baidu/bdgame/sdk/obf/dg;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/dg;->b(Lcom/baidu/bdgame/sdk/obf/dg;)V

    .line 123
    :goto_d
    return-void

    .line 121
    :cond_e
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dg$1;->a:Lcom/baidu/bdgame/sdk/obf/dg;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/dg;->c(Lcom/baidu/bdgame/sdk/obf/dg;)V

    goto :goto_d
.end method
