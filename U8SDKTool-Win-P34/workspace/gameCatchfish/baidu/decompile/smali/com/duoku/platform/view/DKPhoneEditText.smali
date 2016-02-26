.class public Lcom/duoku/platform/view/DKPhoneEditText;
.super Landroid/widget/EditText;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    invoke-direct {p0}, Lcom/duoku/platform/view/DKPhoneEditText;->a()V

    .line 16
    return-void
.end method

.method private a()V
    .registers 5

    .prologue
    .line 25
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0xb

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/DKPhoneEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 27
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/DKPhoneEditText;->setInputType(I)V

    .line 28
    return-void
.end method
