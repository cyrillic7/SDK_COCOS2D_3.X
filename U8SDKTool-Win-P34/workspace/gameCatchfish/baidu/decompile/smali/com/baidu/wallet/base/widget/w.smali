.class Lcom/baidu/wallet/base/widget/w;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/baidu/wallet/base/widget/PluginEditText;


# direct methods
.method constructor <init>(Lcom/baidu/wallet/base/widget/PluginEditText;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/wallet/base/widget/w;->a:Lcom/baidu/wallet/base/widget/PluginEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    iget-object v1, p0, Lcom/baidu/wallet/base/widget/w;->a:Lcom/baidu/wallet/base/widget/PluginEditText;

    invoke-virtual {v1}, Lcom/baidu/wallet/base/widget/PluginEditText;->getLayout()Landroid/text/Layout;

    move-result-object v1

    packed-switch v0, :pswitch_data_9a

    :cond_d
    :goto_d
    iget-object v0, p0, Lcom/baidu/wallet/base/widget/w;->a:Lcom/baidu/wallet/base/widget/PluginEditText;

    invoke-static {v0}, Lcom/baidu/wallet/base/widget/PluginEditText;->b(Lcom/baidu/wallet/base/widget/PluginEditText;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->showInputMethod(Landroid/content/Context;Landroid/view/View;)Z

    const/4 v0, 0x1

    return v0

    :pswitch_18
    iget-object v0, p0, Lcom/baidu/wallet/base/widget/w;->a:Lcom/baidu/wallet/base/widget/PluginEditText;

    invoke-virtual {v0}, Lcom/baidu/wallet/base/widget/PluginEditText;->getScrollY()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v0

    iget-object v2, p0, Lcom/baidu/wallet/base/widget/w;->a:Lcom/baidu/wallet/base/widget/PluginEditText;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v1, v0, v3}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v0

    invoke-static {v2, v0}, Lcom/baidu/wallet/base/widget/PluginEditText;->a(Lcom/baidu/wallet/base/widget/PluginEditText;I)I

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/w;->a:Lcom/baidu/wallet/base/widget/PluginEditText;

    invoke-virtual {v0}, Lcom/baidu/wallet/base/widget/PluginEditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/wallet/base/widget/w;->a:Lcom/baidu/wallet/base/widget/PluginEditText;

    invoke-static {v1}, Lcom/baidu/wallet/base/widget/PluginEditText;->a(Lcom/baidu/wallet/base/widget/PluginEditText;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto :goto_d

    :pswitch_47
    iget-object v0, p0, Lcom/baidu/wallet/base/widget/w;->a:Lcom/baidu/wallet/base/widget/PluginEditText;

    invoke-virtual {v0}, Lcom/baidu/wallet/base/widget/PluginEditText;->getScrollY()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v0, v2}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v0

    iget-object v1, p0, Lcom/baidu/wallet/base/widget/w;->a:Lcom/baidu/wallet/base/widget/PluginEditText;

    invoke-static {v1}, Lcom/baidu/wallet/base/widget/PluginEditText;->a(Lcom/baidu/wallet/base/widget/PluginEditText;)I

    move-result v1

    if-ltz v1, :cond_d

    iget-object v1, p0, Lcom/baidu/wallet/base/widget/w;->a:Lcom/baidu/wallet/base/widget/PluginEditText;

    invoke-static {v1}, Lcom/baidu/wallet/base/widget/PluginEditText;->a(Lcom/baidu/wallet/base/widget/PluginEditText;)I

    move-result v1

    iget-object v2, p0, Lcom/baidu/wallet/base/widget/w;->a:Lcom/baidu/wallet/base/widget/PluginEditText;

    invoke-virtual {v2}, Lcom/baidu/wallet/base/widget/PluginEditText;->getEditableText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-gt v1, v2, :cond_d

    if-ltz v0, :cond_d

    iget-object v1, p0, Lcom/baidu/wallet/base/widget/w;->a:Lcom/baidu/wallet/base/widget/PluginEditText;

    invoke-virtual {v1}, Lcom/baidu/wallet/base/widget/PluginEditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-gt v0, v1, :cond_d

    iget-object v1, p0, Lcom/baidu/wallet/base/widget/w;->a:Lcom/baidu/wallet/base/widget/PluginEditText;

    invoke-virtual {v1}, Lcom/baidu/wallet/base/widget/PluginEditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/wallet/base/widget/w;->a:Lcom/baidu/wallet/base/widget/PluginEditText;

    invoke-static {v2}, Lcom/baidu/wallet/base/widget/PluginEditText;->a(Lcom/baidu/wallet/base/widget/PluginEditText;)I

    move-result v2

    invoke-static {v1, v2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto/16 :goto_d

    :pswitch_data_9a
    .packed-switch 0x0
        :pswitch_18
        :pswitch_47
        :pswitch_47
    .end packed-switch
.end method
