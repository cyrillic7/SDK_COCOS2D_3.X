.class final Lcom/baidu/bdgame/sdk/obf/gg$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/gg;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/gg;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/gg;)V
    .registers 2

    .prologue
    .line 51
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/gg$1;->a:Lcom/baidu/bdgame/sdk/obf/gg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gg$1;->a:Lcom/baidu/bdgame/sdk/obf/gg;

    invoke-static {v0, p1}, Lcom/baidu/bdgame/sdk/obf/gg;->a(Lcom/baidu/bdgame/sdk/obf/gg;Landroid/view/View;)V

    .line 56
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gg$1;->a:Lcom/baidu/bdgame/sdk/obf/gg;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/gg;->b(Lcom/baidu/bdgame/sdk/obf/gg;)Lcom/baidu/bdgame/sdk/obf/gh;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/gg$1;->a:Lcom/baidu/bdgame/sdk/obf/gg;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/gg;->a(Lcom/baidu/bdgame/sdk/obf/gg;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/gh;->d(I)V

    .line 57
    return-void
.end method
