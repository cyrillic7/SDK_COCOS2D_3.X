.class public Lcom/duoku/platform/view/a/h;
.super Lcom/duoku/platform/view/a/b;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ValidFragment"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoku/platform/view/a/h$a;
    }
.end annotation


# instance fields
.field private c:I

.field private d:Ljava/lang/String;

.field private e:Landroid/widget/EditText;

.field private f:Landroid/widget/EditText;

.field private g:Landroid/widget/Button;

.field private h:Landroid/widget/LinearLayout;

.field private i:Landroid/widget/LinearLayout;

.field private j:Landroid/widget/RelativeLayout;

.field private k:Landroid/widget/LinearLayout;

.field private l:Landroid/widget/TextView;

.field private m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/duoku/platform/ui/a/k;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/lang/String;

.field private p:Landroid/view/View$OnClickListener;

.field private q:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/duoku/platform/ui/a/k;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/duoku/platform/view/a/b;-><init>(Landroid/content/Context;)V

    .line 302
    new-instance v0, Lcom/duoku/platform/view/a/h$1;

    invoke-direct {v0, p0}, Lcom/duoku/platform/view/a/h$1;-><init>(Lcom/duoku/platform/view/a/h;)V

    iput-object v0, p0, Lcom/duoku/platform/view/a/h;->p:Landroid/view/View$OnClickListener;

    .line 354
    new-instance v0, Lcom/duoku/platform/view/a/h$2;

    invoke-direct {v0, p0}, Lcom/duoku/platform/view/a/h$2;-><init>(Lcom/duoku/platform/view/a/h;)V

    iput-object v0, p0, Lcom/duoku/platform/view/a/h;->q:Landroid/view/View$OnClickListener;

    .line 96
    iput-object p2, p0, Lcom/duoku/platform/view/a/h;->n:Ljava/util/ArrayList;

    .line 97
    iput-object p3, p0, Lcom/duoku/platform/view/a/h;->o:Ljava/lang/String;

    .line 98
    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/view/a/h;)Landroid/widget/LinearLayout;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/duoku/platform/view/a/h;->h:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic a(Lcom/duoku/platform/view/a/h;I)V
    .registers 2

    .prologue
    .line 66
    iput p1, p0, Lcom/duoku/platform/view/a/h;->c:I

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/view/a/h;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 68
    iput-object p1, p0, Lcom/duoku/platform/view/a/h;->d:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 5

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 326
    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 328
    iget-object v0, p0, Lcom/duoku/platform/view/a/h;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 329
    iget-object v0, p0, Lcom/duoku/platform/view/a/h;->j:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 330
    iget-object v0, p0, Lcom/duoku/platform/view/a/h;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 351
    :goto_1b
    return-void

    .line 334
    :cond_1c
    iget-object v0, p0, Lcom/duoku/platform/view/a/h;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 335
    iget-object v0, p0, Lcom/duoku/platform/view/a/h;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 336
    iget-object v0, p0, Lcom/duoku/platform/view/a/h;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 337
    const-string v0, "2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 339
    iget-object v0, p0, Lcom/duoku/platform/view/a/h;->e:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/duoku/platform/view/a/h;->a:Landroid/content/Context;

    const-string v2, "dk_customer_submit_recharge_text"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    goto :goto_1b

    .line 341
    :cond_41
    const-string v0, "3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 343
    iget-object v0, p0, Lcom/duoku/platform/view/a/h;->e:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/duoku/platform/view/a/h;->a:Landroid/content/Context;

    const-string v2, "dk_customer_submit_account_text"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    goto :goto_1b

    .line 347
    :cond_57
    iget-object v0, p0, Lcom/duoku/platform/view/a/h;->e:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/duoku/platform/view/a/h;->a:Landroid/content/Context;

    const-string v2, "dk_customer_tip_submit_text"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    goto :goto_1b
.end method

.method private a()Z
    .registers 7

    .prologue
    const/high16 v5, 0x40800000

    const/4 v0, 0x0

    .line 176
    const-string v1, ""

    iget-object v2, p0, Lcom/duoku/platform/view/a/h;->e:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 178
    iget-object v1, p0, Lcom/duoku/platform/view/a/h;->e:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 179
    iget-object v1, p0, Lcom/duoku/platform/view/a/h;->e:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/duoku/platform/view/a/h;->a:Landroid/content/Context;

    const-string v3, "dk_editview_pay_wrong"

    invoke-static {v2, v3}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 180
    iget-object v1, p0, Lcom/duoku/platform/view/a/h;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/duoku/platform/view/a/h;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/duoku/platform/view/a/h;->a:Landroid/content/Context;

    const-string v4, "dk_customer_question_text"

    invoke-static {v3, v4}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/duoku/platform/util/p;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 181
    iget-object v1, p0, Lcom/duoku/platform/view/a/h;->e:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/duoku/platform/view/a/h;->a:Landroid/content/Context;

    invoke-static {v2, v5}, Lcom/duoku/platform/ui/b/b;->a(Landroid/content/Context;F)I

    move-result v2

    iget-object v3, p0, Lcom/duoku/platform/view/a/h;->a:Landroid/content/Context;

    invoke-static {v3, v5}, Lcom/duoku/platform/ui/b/b;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v1, v2, v3, v0, v0}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 210
    :goto_4f
    return v0

    .line 184
    :cond_50
    iget-object v1, p0, Lcom/duoku/platform/view/a/h;->e:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xa

    if-ge v1, v2, :cond_9d

    .line 185
    iget-object v1, p0, Lcom/duoku/platform/view/a/h;->e:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 186
    iget-object v1, p0, Lcom/duoku/platform/view/a/h;->e:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/duoku/platform/view/a/h;->a:Landroid/content/Context;

    const-string v3, "dk_editview_pay_wrong"

    invoke-static {v2, v3}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 187
    iget-object v1, p0, Lcom/duoku/platform/view/a/h;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/duoku/platform/view/a/h;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/duoku/platform/view/a/h;->a:Landroid/content/Context;

    const-string v4, "dk_customer_question_less_text"

    invoke-static {v3, v4}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/duoku/platform/util/p;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 188
    iget-object v1, p0, Lcom/duoku/platform/view/a/h;->e:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/duoku/platform/view/a/h;->a:Landroid/content/Context;

    invoke-static {v2, v5}, Lcom/duoku/platform/ui/b/b;->a(Landroid/content/Context;F)I

    move-result v2

    iget-object v3, p0, Lcom/duoku/platform/view/a/h;->a:Landroid/content/Context;

    invoke-static {v3, v5}, Lcom/duoku/platform/ui/b/b;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v1, v2, v3, v0, v0}, Landroid/widget/EditText;->setPadding(IIII)V

    goto :goto_4f

    .line 191
    :cond_9d
    const-string v1, ""

    iget-object v2, p0, Lcom/duoku/platform/view/a/h;->f:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_106

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/duoku/platform/view/a/h;->f:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-eq v1, v2, :cond_106

    .line 193
    iget-object v1, p0, Lcom/duoku/platform/view/a/h;->f:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 194
    iget-object v1, p0, Lcom/duoku/platform/view/a/h;->e:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/duoku/platform/view/a/h;->a:Landroid/content/Context;

    const-string v3, "dk_payment_edittext_selector"

    invoke-static {v2, v3}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 195
    iget-object v1, p0, Lcom/duoku/platform/view/a/h;->f:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/duoku/platform/view/a/h;->a:Landroid/content/Context;

    const-string v3, "dk_editview_pay_wrong"

    invoke-static {v2, v3}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 196
    iget-object v1, p0, Lcom/duoku/platform/view/a/h;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/duoku/platform/view/a/h;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/duoku/platform/view/a/h;->a:Landroid/content/Context;

    const-string v4, "dk_toast_error_credit_phone_length"

    invoke-static {v3, v4}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/duoku/platform/util/p;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 197
    iget-object v1, p0, Lcom/duoku/platform/view/a/h;->e:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/duoku/platform/view/a/h;->a:Landroid/content/Context;

    invoke-static {v2, v5}, Lcom/duoku/platform/ui/b/b;->a(Landroid/content/Context;F)I

    move-result v2

    iget-object v3, p0, Lcom/duoku/platform/view/a/h;->a:Landroid/content/Context;

    invoke-static {v3, v5}, Lcom/duoku/platform/ui/b/b;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v1, v2, v3, v0, v0}, Landroid/widget/EditText;->setPadding(IIII)V

    goto/16 :goto_4f

    .line 200
    :cond_106
    const-string v1, ""

    iget-object v2, p0, Lcom/duoku/platform/view/a/h;->f:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_175

    iget-object v1, p0, Lcom/duoku/platform/view/a/h;->f:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/duoku/platform/ui/b/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_175

    .line 202
    iget-object v1, p0, Lcom/duoku/platform/view/a/h;->f:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 203
    iget-object v1, p0, Lcom/duoku/platform/view/a/h;->e:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/duoku/platform/view/a/h;->a:Landroid/content/Context;

    const-string v3, "dk_payment_edittext_selector"

    invoke-static {v2, v3}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 204
    iget-object v1, p0, Lcom/duoku/platform/view/a/h;->f:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/duoku/platform/view/a/h;->a:Landroid/content/Context;

    const-string v3, "dk_editview_pay_wrong"

    invoke-static {v2, v3}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 205
    iget-object v1, p0, Lcom/duoku/platform/view/a/h;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/duoku/platform/view/a/h;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/duoku/platform/view/a/h;->a:Landroid/content/Context;

    const-string v4, "dk_phonenum_rule_error"

    invoke-static {v3, v4}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/duoku/platform/util/p;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 206
    iget-object v1, p0, Lcom/duoku/platform/view/a/h;->e:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/duoku/platform/view/a/h;->a:Landroid/content/Context;

    invoke-static {v2, v5}, Lcom/duoku/platform/ui/b/b;->a(Landroid/content/Context;F)I

    move-result v2

    iget-object v3, p0, Lcom/duoku/platform/view/a/h;->a:Landroid/content/Context;

    invoke-static {v3, v5}, Lcom/duoku/platform/ui/b/b;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v1, v2, v3, v0, v0}, Landroid/widget/EditText;->setPadding(IIII)V

    goto/16 :goto_4f

    .line 210
    :cond_175
    const/4 v0, 0x1

    goto/16 :goto_4f
.end method

.method static synthetic b(Lcom/duoku/platform/view/a/h;)I
    .registers 2

    .prologue
    .line 66
    iget v0, p0, Lcom/duoku/platform/view/a/h;->c:I

    return v0
.end method

.method private b()V
    .registers 9

    .prologue
    const/4 v7, -0x2

    const/4 v3, 0x0

    .line 218
    iget-object v0, p0, Lcom/duoku/platform/view/a/h;->n:Ljava/util/ArrayList;

    if-nez v0, :cond_7

    .line 256
    :cond_6
    return-void

    .line 220
    :cond_7
    iget-object v0, p0, Lcom/duoku/platform/view/a/h;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_6

    move v2, v3

    .line 223
    :goto_10
    iget-object v0, p0, Lcom/duoku/platform/view/a/h;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_6

    .line 225
    iget-object v1, p0, Lcom/duoku/platform/view/a/h;->b:Landroid/view/LayoutInflater;

    .line 226
    iget-object v4, p0, Lcom/duoku/platform/view/a/h;->a:Landroid/content/Context;

    invoke-static {}, Lcom/duoku/platform/ui/b/a;->a()Lcom/duoku/platform/ui/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/ui/b/a;->b()Z

    move-result v0

    if-eqz v0, :cond_cb

    const-string v0, "dk_fragment_common_item_type"

    :goto_28
    invoke-static {v4, v0}, Lcom/duoku/platform/util/m;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v4, 0x0

    .line 225
    invoke-virtual {v1, v0, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 227
    iget-object v0, p0, Lcom/duoku/platform/view/a/h;->a:Landroid/content/Context;

    const-string v1, "dk_btn_customer_type"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 229
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/duoku/platform/view/a/h;->m:Ljava/util/ArrayList;

    .line 230
    iget-object v1, p0, Lcom/duoku/platform/view/a/h;->m:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    iget-object v5, p0, Lcom/duoku/platform/view/a/h;->m:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/duoku/platform/view/a/h;->n:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/duoku/platform/ui/a/k;

    invoke-virtual {v1}, Lcom/duoku/platform/ui/a/k;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    iget-object v1, p0, Lcom/duoku/platform/view/a/h;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 234
    iget-object v1, p0, Lcom/duoku/platform/view/a/h;->n:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/duoku/platform/ui/a/k;

    invoke-virtual {v1}, Lcom/duoku/platform/ui/a/k;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 235
    iget-object v1, p0, Lcom/duoku/platform/view/a/h;->p:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    invoke-static {}, Lcom/duoku/platform/ui/b/a;->a()Lcom/duoku/platform/ui/b/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/ui/b/a;->b()Z

    move-result v1

    if-nez v1, :cond_9f

    .line 239
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 241
    iget-object v5, p0, Lcom/duoku/platform/view/a/h;->a:Landroid/content/Context;

    const/high16 v6, 0x41000000

    invoke-static {v5, v6}, Lcom/duoku/platform/ui/b/b;->a(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v1, v3, v3, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 242
    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 245
    :cond_9f
    iget-object v1, p0, Lcom/duoku/platform/view/a/h;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 247
    if-nez v2, :cond_c6

    .line 249
    iput v3, p0, Lcom/duoku/platform/view/a/h;->c:I

    .line 250
    iget-object v1, p0, Lcom/duoku/platform/view/a/h;->n:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/duoku/platform/ui/a/k;

    invoke-virtual {v1}, Lcom/duoku/platform/ui/a/k;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/duoku/platform/view/a/h;->d:Ljava/lang/String;

    .line 251
    iget-object v1, p0, Lcom/duoku/platform/view/a/h;->a:Landroid/content/Context;

    const-string v4, "dk_bg_other_pay_press"

    invoke-static {v1, v4}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 253
    iget-object v0, p0, Lcom/duoku/platform/view/a/h;->d:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/duoku/platform/view/a/h;->a(Ljava/lang/String;)V

    .line 223
    :cond_c6
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_10

    .line 226
    :cond_cb
    const-string v0, "dk_fragment_common_item_port"

    goto/16 :goto_28
.end method

.method static synthetic b(Lcom/duoku/platform/view/a/h;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 324
    invoke-direct {p0, p1}, Lcom/duoku/platform/view/a/h;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/duoku/platform/view/a/h;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/duoku/platform/view/a/h;->d:Ljava/lang/String;

    return-object v0
.end method

.method private c()V
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 263
    invoke-static {}, Lcom/duoku/platform/ui/b/c;->c()Lcom/duoku/platform/ui/b/c;

    move-result-object v1

    iget-object v2, p0, Lcom/duoku/platform/view/a/h;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/duoku/platform/view/a/h;->a:Landroid/content/Context;

    const-string v4, "dk_tip_progress_pay_info"

    invoke-static {v3, v4}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/duoku/platform/ui/b/c;->a(Ljava/lang/String;Z)V

    .line 265
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/k;->a()Lcom/baidu/bdgame/sdk/obf/k;

    move-result-object v1

    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/duoku/platform/b;->c()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/bdgame/sdk/obf/k;->g(Landroid/content/Context;)Lcom/baidu/platformsdk/BDPlatformUser;

    move-result-object v2

    .line 266
    if-nez v2, :cond_29

    .line 299
    :cond_28
    :goto_28
    return-void

    .line 270
    :cond_29
    invoke-virtual {v2}, Lcom/baidu/platformsdk/BDPlatformUser;->getUserType()Lcom/baidu/platformsdk/BDPlatformUser$UserType;

    move-result-object v1

    .line 271
    if-eqz v1, :cond_28

    .line 276
    sget-object v3, Lcom/baidu/platformsdk/BDPlatformUser$UserType;->Baidu:Lcom/baidu/platformsdk/BDPlatformUser$UserType;

    if-ne v1, v3, :cond_91

    .line 278
    const/4 v1, 0x3

    .line 279
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/k;->a()Lcom/baidu/bdgame/sdk/obf/k;

    move-result-object v3

    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/duoku/platform/b;->c()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/baidu/bdgame/sdk/obf/k;->b(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_9d

    .line 281
    invoke-virtual {v2}, Lcom/baidu/platformsdk/BDPlatformUser;->isGuest()Z

    move-result v2

    if-eqz v2, :cond_9d

    .line 296
    :cond_4c
    :goto_4c
    invoke-static {}, Lcom/duoku/platform/f/c;->a()Lcom/duoku/platform/f/a;

    move-result-object v1

    iget-object v2, p0, Lcom/duoku/platform/view/a/h;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/duoku/platform/view/a/h;->e:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/duoku/platform/view/a/h;->f:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 297
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 296
    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/duoku/platform/f/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 298
    invoke-static {}, Lcom/duoku/platform/g/g;->a()Lcom/duoku/platform/g/e;

    move-result-object v1

    sget-object v2, Lcom/duoku/platform/util/Constants;->DK_CUSTOMER_SUBMIT_URL:Ljava/lang/String;

    const/16 v3, 0x3d

    new-instance v4, Lcom/duoku/platform/view/a/h$a;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/duoku/platform/view/a/h$a;-><init>(Lcom/duoku/platform/view/a/h;Lcom/duoku/platform/view/a/h$a;)V

    invoke-interface {v1, v2, v3, v0, v4}, Lcom/duoku/platform/g/e;->a(Ljava/lang/String;ILjava/lang/String;Lcom/duoku/platform/g/f;)I

    goto :goto_28

    .line 287
    :cond_91
    sget-object v2, Lcom/baidu/platformsdk/BDPlatformUser$UserType;->_91:Lcom/baidu/platformsdk/BDPlatformUser$UserType;

    if-ne v1, v2, :cond_97

    .line 289
    const/4 v0, 0x2

    .line 290
    goto :goto_4c

    .line 291
    :cond_97
    sget-object v2, Lcom/baidu/platformsdk/BDPlatformUser$UserType;->Duoku:Lcom/baidu/platformsdk/BDPlatformUser$UserType;

    if-ne v1, v2, :cond_4c

    .line 293
    const/4 v0, 0x1

    goto :goto_4c

    :cond_9d
    move v0, v1

    goto :goto_4c
.end method

.method static synthetic d(Lcom/duoku/platform/view/a/h;)Z
    .registers 2

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/duoku/platform/view/a/h;->a()Z

    move-result v0

    return v0
.end method

.method static synthetic e(Lcom/duoku/platform/view/a/h;)Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/duoku/platform/view/a/h;->e:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic f(Lcom/duoku/platform/view/a/h;)Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/duoku/platform/view/a/h;->f:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic g(Lcom/duoku/platform/view/a/h;)V
    .registers 1

    .prologue
    .line 261
    invoke-direct {p0}, Lcom/duoku/platform/view/a/h;->c()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 2

    .prologue
    .line 159
    invoke-super {p0, p1}, Lcom/duoku/platform/view/a/b;->onActivityCreated(Landroid/os/Bundle;)V

    .line 160
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 8

    .prologue
    .line 109
    invoke-static {}, Lcom/duoku/platform/ui/b/a;->a()Lcom/duoku/platform/ui/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/view/a/h;->a:Landroid/content/Context;

    const-string v2, "dk_fragment_submit_portrait"

    const-string v3, "dk_fragment_submit_landscape"

    invoke-virtual {v0, v1, v2, v3}, Lcom/duoku/platform/ui/b/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 111
    iget-object v0, p0, Lcom/duoku/platform/view/a/h;->a:Landroid/content/Context;

    const-string v2, "dk_et_submit_question"

    invoke-static {v0, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/duoku/platform/view/a/h;->e:Landroid/widget/EditText;

    .line 112
    iget-object v0, p0, Lcom/duoku/platform/view/a/h;->a:Landroid/content/Context;

    const-string v2, "dk_et_submit_phone"

    invoke-static {v0, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/duoku/platform/view/a/h;->f:Landroid/widget/EditText;

    .line 113
    iget-object v0, p0, Lcom/duoku/platform/view/a/h;->a:Landroid/content/Context;

    const-string v2, "dk_btn_submit_question"

    invoke-static {v0, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/duoku/platform/view/a/h;->g:Landroid/widget/Button;

    .line 114
    iget-object v0, p0, Lcom/duoku/platform/view/a/h;->a:Landroid/content/Context;

    const-string v2, "dk_layout_question_type"

    invoke-static {v0, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/duoku/platform/view/a/h;->h:Landroid/widget/LinearLayout;

    .line 115
    iget-object v0, p0, Lcom/duoku/platform/view/a/h;->a:Landroid/content/Context;

    const-string v2, "dk_layout_question_submit_content"

    invoke-static {v0, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/duoku/platform/view/a/h;->i:Landroid/widget/LinearLayout;

    .line 116
    iget-object v0, p0, Lcom/duoku/platform/view/a/h;->a:Landroid/content/Context;

    const-string v2, "dk_layout_baidu_logo"

    invoke-static {v0, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/duoku/platform/view/a/h;->j:Landroid/widget/RelativeLayout;

    .line 117
    iget-object v0, p0, Lcom/duoku/platform/view/a/h;->a:Landroid/content/Context;

    const-string v2, "dk_layout_question_gamequestion"

    invoke-static {v0, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/duoku/platform/view/a/h;->k:Landroid/widget/LinearLayout;

    .line 118
    iget-object v0, p0, Lcom/duoku/platform/view/a/h;->a:Landroid/content/Context;

    const-string v2, "dk_hint_question_gamequestion"

    invoke-static {v0, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoku/platform/view/a/h;->l:Landroid/widget/TextView;

    .line 119
    iget-object v0, p0, Lcom/duoku/platform/view/a/h;->l:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/duoku/platform/view/a/h;->o:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v0, p0, Lcom/duoku/platform/view/a/h;->f:Landroid/widget/EditText;

    new-instance v2, Lcom/duoku/platform/view/a/h$3;

    invoke-direct {v2, p0}, Lcom/duoku/platform/view/a/h$3;-><init>(Lcom/duoku/platform/view/a/h;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 144
    invoke-direct {p0}, Lcom/duoku/platform/view/a/h;->b()V

    .line 147
    invoke-virtual {p0, v1}, Lcom/duoku/platform/view/a/h;->a(Landroid/view/View;)V

    .line 149
    iget-object v0, p0, Lcom/duoku/platform/view/a/h;->g:Landroid/widget/Button;

    iget-object v2, p0, Lcom/duoku/platform/view/a/h;->q:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/util/k;->a(Ljava/lang/String;)Lcom/duoku/platform/util/k;

    move-result-object v0

    const-string v2, "DKSubmitFragment--onCreateView"

    invoke-virtual {v0, v2}, Lcom/duoku/platform/util/k;->e(Ljava/lang/String;)V

    .line 153
    return-object v1
.end method
