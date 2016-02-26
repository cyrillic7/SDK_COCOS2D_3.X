.class Lcom/baidu/wallet/base/widget/u;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/baidu/wallet/base/widget/DivisionEditText;


# direct methods
.method constructor <init>(Lcom/baidu/wallet/base/widget/DivisionEditText;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/baidu/wallet/base/widget/u;->b:Lcom/baidu/wallet/base/widget/DivisionEditText;

    iput-object p2, p0, Lcom/baidu/wallet/base/widget/u;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    iget-object v1, p0, Lcom/baidu/wallet/base/widget/u;->b:Lcom/baidu/wallet/base/widget/DivisionEditText;

    invoke-virtual {v1}, Lcom/baidu/wallet/base/widget/DivisionEditText;->getLayout()Landroid/text/Layout;

    move-result-object v1

    packed-switch v0, :pswitch_data_6e

    :goto_d
    iget-object v0, p0, Lcom/baidu/wallet/base/widget/u;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->showInputMethod(Landroid/content/Context;Landroid/view/View;)Z

    const/4 v0, 0x1

    return v0

    :pswitch_14
    iget-object v0, p0, Lcom/baidu/wallet/base/widget/u;->b:Lcom/baidu/wallet/base/widget/DivisionEditText;

    invoke-virtual {v0}, Lcom/baidu/wallet/base/widget/DivisionEditText;->getScrollY()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v0

    iget-object v2, p0, Lcom/baidu/wallet/base/widget/u;->b:Lcom/baidu/wallet/base/widget/DivisionEditText;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v1, v0, v3}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v0

    invoke-static {v2, v0}, Lcom/baidu/wallet/base/widget/DivisionEditText;->a(Lcom/baidu/wallet/base/widget/DivisionEditText;I)I

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/u;->b:Lcom/baidu/wallet/base/widget/DivisionEditText;

    invoke-virtual {v0}, Lcom/baidu/wallet/base/widget/DivisionEditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/wallet/base/widget/u;->b:Lcom/baidu/wallet/base/widget/DivisionEditText;

    invoke-static {v1}, Lcom/baidu/wallet/base/widget/DivisionEditText;->a(Lcom/baidu/wallet/base/widget/DivisionEditText;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto :goto_d

    :pswitch_43
    iget-object v0, p0, Lcom/baidu/wallet/base/widget/u;->b:Lcom/baidu/wallet/base/widget/DivisionEditText;

    invoke-virtual {v0}, Lcom/baidu/wallet/base/widget/DivisionEditText;->getScrollY()I

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

    iget-object v1, p0, Lcom/baidu/wallet/base/widget/u;->b:Lcom/baidu/wallet/base/widget/DivisionEditText;

    invoke-virtual {v1}, Lcom/baidu/wallet/base/widget/DivisionEditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/wallet/base/widget/u;->b:Lcom/baidu/wallet/base/widget/DivisionEditText;

    invoke-static {v2}, Lcom/baidu/wallet/base/widget/DivisionEditText;->a(Lcom/baidu/wallet/base/widget/DivisionEditText;)I

    move-result v2

    invoke-static {v1, v2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_d

    nop

    :pswitch_data_6e
    .packed-switch 0x0
        :pswitch_14
        :pswitch_43
        :pswitch_43
    .end packed-switch
.end method
