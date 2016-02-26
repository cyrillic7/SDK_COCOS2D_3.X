.class public Lcom/baidu/wallet/base/widget/DivisionEditText;
.super Landroid/widget/EditText;


# static fields
.field public static final VIEW_TYPE_BANKCARD:I = 0x18

.field public static final VIEW_TYPE_ID:I = 0x14

.field public static final VIEW_TYPE_PHONE:I = 0xd


# instance fields
.field private a:Z

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/baidu/wallet/base/widget/DivisionEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/wallet/base/widget/DivisionEditText;->a:Z

    iput v1, p0, Lcom/baidu/wallet/base/widget/DivisionEditText;->c:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/baidu/wallet/base/widget/DivisionEditText;->d:I

    invoke-virtual {p0, v1}, Lcom/baidu/wallet/base/widget/DivisionEditText;->setLongClickable(Z)V

    new-instance v0, Lcom/baidu/wallet/base/widget/t;

    invoke-direct {v0, p0, p1}, Lcom/baidu/wallet/base/widget/t;-><init>(Lcom/baidu/wallet/base/widget/DivisionEditText;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/baidu/wallet/base/widget/DivisionEditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v0, Lcom/baidu/wallet/base/widget/s;

    invoke-direct {v0, p0}, Lcom/baidu/wallet/base/widget/s;-><init>(Lcom/baidu/wallet/base/widget/DivisionEditText;)V

    invoke-virtual {p0, v0}, Lcom/baidu/wallet/base/widget/DivisionEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/wallet/base/widget/DivisionEditText;->a:Z

    iput v1, p0, Lcom/baidu/wallet/base/widget/DivisionEditText;->c:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/baidu/wallet/base/widget/DivisionEditText;->d:I

    invoke-virtual {p0, v1}, Lcom/baidu/wallet/base/widget/DivisionEditText;->setLongClickable(Z)V

    new-instance v0, Lcom/baidu/wallet/base/widget/u;

    invoke-direct {v0, p0, p1}, Lcom/baidu/wallet/base/widget/u;-><init>(Lcom/baidu/wallet/base/widget/DivisionEditText;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/baidu/wallet/base/widget/DivisionEditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/wallet/base/widget/DivisionEditText;)I
    .registers 2

    iget v0, p0, Lcom/baidu/wallet/base/widget/DivisionEditText;->b:I

    return v0
.end method

.method static synthetic a(Lcom/baidu/wallet/base/widget/DivisionEditText;I)I
    .registers 2

    iput p1, p0, Lcom/baidu/wallet/base/widget/DivisionEditText;->b:I

    return p1
.end method

.method static synthetic b(Lcom/baidu/wallet/base/widget/DivisionEditText;)I
    .registers 2

    iget v0, p0, Lcom/baidu/wallet/base/widget/DivisionEditText;->d:I

    return v0
.end method

.method static synthetic c(Lcom/baidu/wallet/base/widget/DivisionEditText;)I
    .registers 2

    iget v0, p0, Lcom/baidu/wallet/base/widget/DivisionEditText;->c:I

    return v0
.end method


# virtual methods
.method public getRealText()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lcom/baidu/wallet/base/widget/DivisionEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isFormatEnabled()Z
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/wallet/base/widget/DivisionEditText;->a:Z

    return v0
.end method

.method public setFormatEnable(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/baidu/wallet/base/widget/DivisionEditText;->a:Z

    return-void
.end method

.method public setViewType(I)V
    .registers 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    iput p1, p0, Lcom/baidu/wallet/base/widget/DivisionEditText;->c:I

    iget v0, p0, Lcom/baidu/wallet/base/widget/DivisionEditText;->c:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1a

    const/4 v0, 0x3

    iput v0, p0, Lcom/baidu/wallet/base/widget/DivisionEditText;->d:I

    :cond_d
    :goto_d
    new-array v0, v2, [Landroid/text/InputFilter;

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v1, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Lcom/baidu/wallet/base/widget/DivisionEditText;->setFilters([Landroid/text/InputFilter;)V

    :goto_19
    return-void

    :cond_1a
    iget v0, p0, Lcom/baidu/wallet/base/widget/DivisionEditText;->c:I

    const/16 v1, 0x18

    if-ne v0, v1, :cond_24

    const/4 v0, 0x4

    iput v0, p0, Lcom/baidu/wallet/base/widget/DivisionEditText;->d:I

    goto :goto_d

    :cond_24
    iget v0, p0, Lcom/baidu/wallet/base/widget/DivisionEditText;->c:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_d

    const/4 v0, 0x6

    iput v0, p0, Lcom/baidu/wallet/base/widget/DivisionEditText;->d:I

    invoke-virtual {p0}, Lcom/baidu/wallet/base/widget/DivisionEditText;->isFormatEnabled()Z

    move-result v0

    if-eqz v0, :cond_40

    new-array v0, v2, [Landroid/text/InputFilter;

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v1, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Lcom/baidu/wallet/base/widget/DivisionEditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_19

    :cond_40
    new-array v0, v2, [Landroid/text/InputFilter;

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    add-int/lit8 v2, p1, -0x2

    invoke-direct {v1, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Lcom/baidu/wallet/base/widget/DivisionEditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_19
.end method
