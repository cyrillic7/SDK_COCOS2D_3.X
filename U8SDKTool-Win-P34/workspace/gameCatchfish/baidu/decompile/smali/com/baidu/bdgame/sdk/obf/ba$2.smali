.class final Lcom/baidu/bdgame/sdk/obf/ba$2;
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
    .line 54
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ba$2;->b:Lcom/baidu/bdgame/sdk/obf/ba;

    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/ba$2;->a:Lcom/baidu/bdgame/sdk/obf/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ba$2;->b:Lcom/baidu/bdgame/sdk/obf/ba;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ba;->e(Lcom/baidu/bdgame/sdk/obf/ba;)Lcom/baidu/bdgame/sdk/obf/ba$a;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 59
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ba$2;->b:Lcom/baidu/bdgame/sdk/obf/ba;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ba;->e(Lcom/baidu/bdgame/sdk/obf/ba;)Lcom/baidu/bdgame/sdk/obf/ba$a;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ba$2;->a:Lcom/baidu/bdgame/sdk/obf/r;

    invoke-interface {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ba$a;->a(Lcom/baidu/bdgame/sdk/obf/r;)V

    .line 61
    :cond_13
    return-void
.end method
