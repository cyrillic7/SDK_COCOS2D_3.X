.class public Lcom/baidu/wallet/base/widget/SafeBaseKeyboard;
.super Landroid/inputmethodservice/Keyboard;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/inputmethodservice/Keyboard$Key;

.field private c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/baidu/wallet/base/widget/SafeBaseKeyboard;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/wallet/base/widget/SafeBaseKeyboard;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/baidu/wallet/base/widget/SafeBaseKeyboard;->c:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/CharSequence;II)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;II)V

    iput-object p1, p0, Lcom/baidu/wallet/base/widget/SafeBaseKeyboard;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method a(Landroid/content/res/Resources;I)V
    .registers 7

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SafeBaseKeyboard;->b:Landroid/inputmethodservice/Keyboard$Key;

    if-nez v0, :cond_6

    :goto_5
    return-void

    :cond_6
    const v0, 0x400000ff

    and-int/2addr v0, p2

    packed-switch v0, :pswitch_data_6e

    :pswitch_d
    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SafeBaseKeyboard;->b:Landroid/inputmethodservice/Keyboard$Key;

    iget-object v1, p0, Lcom/baidu/wallet/base/widget/SafeBaseKeyboard;->c:Landroid/content/Context;

    const-string v2, "sym_keyboard_return"

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->drawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SafeBaseKeyboard;->b:Landroid/inputmethodservice/Keyboard$Key;

    iput-object v3, v0, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    goto :goto_5

    :pswitch_22
    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SafeBaseKeyboard;->b:Landroid/inputmethodservice/Keyboard$Key;

    iput-object v3, v0, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SafeBaseKeyboard;->b:Landroid/inputmethodservice/Keyboard$Key;

    iput-object v3, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SafeBaseKeyboard;->b:Landroid/inputmethodservice/Keyboard$Key;

    iget-object v1, p0, Lcom/baidu/wallet/base/widget/SafeBaseKeyboard;->c:Landroid/content/Context;

    const-string v2, "label_go_key"

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->string(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    goto :goto_5

    :pswitch_3b
    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SafeBaseKeyboard;->b:Landroid/inputmethodservice/Keyboard$Key;

    iput-object v3, v0, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SafeBaseKeyboard;->b:Landroid/inputmethodservice/Keyboard$Key;

    iput-object v3, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SafeBaseKeyboard;->b:Landroid/inputmethodservice/Keyboard$Key;

    iget-object v1, p0, Lcom/baidu/wallet/base/widget/SafeBaseKeyboard;->c:Landroid/content/Context;

    const-string v2, "label_next_key"

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->string(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    goto :goto_5

    :pswitch_54
    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SafeBaseKeyboard;->b:Landroid/inputmethodservice/Keyboard$Key;

    iput-object v3, v0, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SafeBaseKeyboard;->b:Landroid/inputmethodservice/Keyboard$Key;

    iput-object v3, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SafeBaseKeyboard;->b:Landroid/inputmethodservice/Keyboard$Key;

    iget-object v1, p0, Lcom/baidu/wallet/base/widget/SafeBaseKeyboard;->c:Landroid/content/Context;

    const-string v2, "label_send_key"

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->string(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    goto :goto_5

    nop

    :pswitch_data_6e
    .packed-switch 0x2
        :pswitch_22
        :pswitch_d
        :pswitch_54
        :pswitch_3b
    .end packed-switch
.end method

.method protected createKeyFromXml(Landroid/content/res/Resources;Landroid/inputmethodservice/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)Landroid/inputmethodservice/Keyboard$Key;
    .registers 12

    new-instance v0, Landroid/inputmethodservice/Keyboard$Key;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/inputmethodservice/Keyboard$Key;-><init>(Landroid/content/res/Resources;Landroid/inputmethodservice/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)V

    iget-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    const/16 v2, 0xa

    if-ne v1, v2, :cond_15

    iput-object v0, p0, Lcom/baidu/wallet/base/widget/SafeBaseKeyboard;->b:Landroid/inputmethodservice/Keyboard$Key;

    :cond_15
    return-object v0
.end method
