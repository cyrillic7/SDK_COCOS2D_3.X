.class Lcom/baidu/bdgame/sdk/obf/ir$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bdgame/sdk/obf/ir;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/ir;


# direct methods
.method private constructor <init>(Lcom/baidu/bdgame/sdk/obf/ir;)V
    .registers 2

    .prologue
    .line 226
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ir$a;->a:Lcom/baidu/bdgame/sdk/obf/ir;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/bdgame/sdk/obf/ir;Lcom/baidu/bdgame/sdk/obf/ir$1;)V
    .registers 3

    .prologue
    .line 226
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/ir$a;-><init>(Lcom/baidu/bdgame/sdk/obf/ir;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 230
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ir$a;->a:Lcom/baidu/bdgame/sdk/obf/ir;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/ir;->f:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_10

    .line 231
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ir$a;->a:Lcom/baidu/bdgame/sdk/obf/ir;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ir;->a(Lcom/baidu/bdgame/sdk/obf/ir;)Lcom/baidu/bdgame/sdk/obf/it;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/it;->R()V

    .line 235
    :cond_f
    :goto_f
    return-void

    .line 232
    :cond_10
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ir$a;->a:Lcom/baidu/bdgame/sdk/obf/ir;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/ir;->g:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_f

    .line 233
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ir$a;->a:Lcom/baidu/bdgame/sdk/obf/ir;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ir;->A()V

    goto :goto_f
.end method
