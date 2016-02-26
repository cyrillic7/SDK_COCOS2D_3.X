.class final Lcom/baidu/bdgame/sdk/obf/mi$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/mi;->a(Landroid/app/Activity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/mi;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/mi;)V
    .registers 2

    .prologue
    .line 87
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/mi$3;->a:Lcom/baidu/bdgame/sdk/obf/mi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 91
    if-eqz p2, :cond_1d

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mi$3;->a:Lcom/baidu/bdgame/sdk/obf/mi;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/mi;->a(Lcom/baidu/bdgame/sdk/obf/mi;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_1d

    .line 92
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mi$3;->a:Lcom/baidu/bdgame/sdk/obf/mi;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/mi;->b(Lcom/baidu/bdgame/sdk/obf/mi;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 96
    :goto_1c
    return-void

    .line 94
    :cond_1d
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mi$3;->a:Lcom/baidu/bdgame/sdk/obf/mi;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/mi;->b(Lcom/baidu/bdgame/sdk/obf/mi;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1c
.end method
