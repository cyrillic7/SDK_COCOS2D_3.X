.class public Lcom/baidu/wallet/base/widget/PluginEditText;
.super Landroid/widget/EditText;


# instance fields
.field private a:Landroid/content/Context;

.field private b:I

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/baidu/wallet/base/widget/PluginEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/wallet/base/widget/PluginEditText;->a:Landroid/content/Context;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/wallet/base/widget/PluginEditText;->c:Z

    iput-object p1, p0, Lcom/baidu/wallet/base/widget/PluginEditText;->a:Landroid/content/Context;

    new-instance v0, Lcom/baidu/wallet/base/widget/v;

    invoke-direct {v0, p0}, Lcom/baidu/wallet/base/widget/v;-><init>(Lcom/baidu/wallet/base/widget/PluginEditText;)V

    invoke-virtual {p0, v0}, Lcom/baidu/wallet/base/widget/PluginEditText;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    new-instance v0, Lcom/baidu/wallet/base/widget/w;

    invoke-direct {v0, p0}, Lcom/baidu/wallet/base/widget/w;-><init>(Lcom/baidu/wallet/base/widget/PluginEditText;)V

    invoke-virtual {p0, v0}, Lcom/baidu/wallet/base/widget/PluginEditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/wallet/base/widget/PluginEditText;->a:Landroid/content/Context;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/wallet/base/widget/PluginEditText;->c:Z

    return-void
.end method

.method static synthetic a(Lcom/baidu/wallet/base/widget/PluginEditText;)I
    .registers 2

    iget v0, p0, Lcom/baidu/wallet/base/widget/PluginEditText;->b:I

    return v0
.end method

.method static synthetic a(Lcom/baidu/wallet/base/widget/PluginEditText;I)I
    .registers 2

    iput p1, p0, Lcom/baidu/wallet/base/widget/PluginEditText;->b:I

    return p1
.end method

.method static synthetic b(Lcom/baidu/wallet/base/widget/PluginEditText;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/PluginEditText;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 5

    invoke-super {p0, p1, p2, p3}, Landroid/widget/EditText;->onFocusChanged(ZILandroid/graphics/Rect;)V

    if-nez p1, :cond_e

    iget-boolean v0, p0, Lcom/baidu/wallet/base/widget/PluginEditText;->c:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/PluginEditText;->a:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/baidu/wallet/core/utils/GlobalUtils;->hideInputMethod(Landroid/content/Context;Landroid/view/View;)Z

    :cond_e
    return-void
.end method

.method public setShowInputMethod(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/baidu/wallet/base/widget/PluginEditText;->c:Z

    return-void
.end method
