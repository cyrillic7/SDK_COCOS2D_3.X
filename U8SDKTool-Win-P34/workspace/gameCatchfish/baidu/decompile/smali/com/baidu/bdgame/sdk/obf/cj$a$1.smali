.class final Lcom/baidu/bdgame/sdk/obf/cj$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/cj$a;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/cj$a;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/cj$a;)V
    .registers 2

    .prologue
    .line 185
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/cj$a$1;->a:Lcom/baidu/bdgame/sdk/obf/cj$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 190
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cj$a$1;->a:Lcom/baidu/bdgame/sdk/obf/cj$a;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/cj$a;->h(Lcom/baidu/bdgame/sdk/obf/cj$a;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/hh;

    .line 191
    return-void
.end method
