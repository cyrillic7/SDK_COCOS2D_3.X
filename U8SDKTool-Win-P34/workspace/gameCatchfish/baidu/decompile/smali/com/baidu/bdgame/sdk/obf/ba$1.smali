.class final Lcom/baidu/bdgame/sdk/obf/ba$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/ba;->a(IZ)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/r;

.field final synthetic b:Lcom/baidu/bdgame/sdk/obf/ba;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/ba;Lcom/baidu/bdgame/sdk/obf/r;)V
    .registers 3

    .prologue
    .line 41
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ba$1;->b:Lcom/baidu/bdgame/sdk/obf/ba;

    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/ba$1;->a:Lcom/baidu/bdgame/sdk/obf/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ba$1;->b:Lcom/baidu/bdgame/sdk/obf/ba;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ba;->a(Lcom/baidu/bdgame/sdk/obf/ba;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ba$1;->a:Lcom/baidu/bdgame/sdk/obf/r;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 46
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ba$1;->b:Lcom/baidu/bdgame/sdk/obf/ba;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ba;->b(Lcom/baidu/bdgame/sdk/obf/ba;)V

    .line 47
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ba$1;->b:Lcom/baidu/bdgame/sdk/obf/ba;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ba;->c(Lcom/baidu/bdgame/sdk/obf/ba;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ba$1;->a:Lcom/baidu/bdgame/sdk/obf/r;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/r;->a()Lcom/baidu/bdgame/sdk/obf/s;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/bl;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/s;)V

    .line 48
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ba$1;->b:Lcom/baidu/bdgame/sdk/obf/ba;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ba;->d(Lcom/baidu/bdgame/sdk/obf/ba;)Lcom/baidu/bdgame/sdk/obf/ba$b;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 49
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ba$1;->b:Lcom/baidu/bdgame/sdk/obf/ba;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ba;->d(Lcom/baidu/bdgame/sdk/obf/ba;)Lcom/baidu/bdgame/sdk/obf/ba$b;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ba$1;->a:Lcom/baidu/bdgame/sdk/obf/r;

    invoke-interface {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ba$b;->a(Lcom/baidu/bdgame/sdk/obf/r;)V

    .line 51
    :cond_32
    return-void
.end method
