.class final Lcom/baidu/bdgame/sdk/obf/ff$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/ff;->d(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/ff;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/ff;)V
    .registers 2

    .prologue
    .line 213
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ff$2;->a:Lcom/baidu/bdgame/sdk/obf/ff;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 217
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ff$2;->a:Lcom/baidu/bdgame/sdk/obf/ff;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ff;->a(Lcom/baidu/bdgame/sdk/obf/ff;I)I

    .line 218
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ff$2;->a:Lcom/baidu/bdgame/sdk/obf/ff;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ff$2;->a:Lcom/baidu/bdgame/sdk/obf/ff;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/ff;->c(Lcom/baidu/bdgame/sdk/obf/ff;)Lcom/baidu/bdgame/sdk/obf/fg;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ff$2;->a:Lcom/baidu/bdgame/sdk/obf/ff;

    invoke-static {v2}, Lcom/baidu/bdgame/sdk/obf/ff;->b(Lcom/baidu/bdgame/sdk/obf/ff;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/baidu/bdgame/sdk/obf/fg;->h(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ff;->b(Lcom/baidu/bdgame/sdk/obf/ff;I)I

    .line 220
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ff$2;->a:Lcom/baidu/bdgame/sdk/obf/ff;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ff;->s()V

    .line 221
    return-void
.end method
