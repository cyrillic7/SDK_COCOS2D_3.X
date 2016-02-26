.class final Lcom/baidu/bdgame/sdk/obf/ep$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/ep;->d(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/ep;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/ep;)V
    .registers 2

    .prologue
    .line 217
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ep$2;->a:Lcom/baidu/bdgame/sdk/obf/ep;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 221
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ep$2;->a:Lcom/baidu/bdgame/sdk/obf/ep;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ep;->a(Lcom/baidu/bdgame/sdk/obf/ep;I)I

    .line 222
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ep$2;->a:Lcom/baidu/bdgame/sdk/obf/ep;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ep$2;->a:Lcom/baidu/bdgame/sdk/obf/ep;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/ep;->e(Lcom/baidu/bdgame/sdk/obf/ep;)Lcom/baidu/bdgame/sdk/obf/eq;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ep$2;->a:Lcom/baidu/bdgame/sdk/obf/ep;

    invoke-static {v2}, Lcom/baidu/bdgame/sdk/obf/ep;->c(Lcom/baidu/bdgame/sdk/obf/ep;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/baidu/bdgame/sdk/obf/eq;->h(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ep;->b(Lcom/baidu/bdgame/sdk/obf/ep;I)I

    .line 224
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ep$2;->a:Lcom/baidu/bdgame/sdk/obf/ep;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ep;->t()V

    .line 225
    return-void
.end method
