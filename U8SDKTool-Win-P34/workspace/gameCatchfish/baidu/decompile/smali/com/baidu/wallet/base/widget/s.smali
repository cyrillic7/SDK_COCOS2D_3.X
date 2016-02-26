.class Lcom/baidu/wallet/base/widget/s;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field a:I

.field b:I

.field c:Z

.field d:I

.field e:I

.field final synthetic f:Lcom/baidu/wallet/base/widget/DivisionEditText;

.field private g:[C

.field private h:Ljava/lang/StringBuffer;


# direct methods
.method constructor <init>(Lcom/baidu/wallet/base/widget/DivisionEditText;)V
    .registers 4

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/baidu/wallet/base/widget/s;->f:Lcom/baidu/wallet/base/widget/DivisionEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/baidu/wallet/base/widget/s;->a:I

    iput v1, p0, Lcom/baidu/wallet/base/widget/s;->b:I

    iput-boolean v1, p0, Lcom/baidu/wallet/base/widget/s;->c:Z

    iput v1, p0, Lcom/baidu/wallet/base/widget/s;->d:I

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/baidu/wallet/base/widget/s;->h:Ljava/lang/StringBuffer;

    iput v1, p0, Lcom/baidu/wallet/base/widget/s;->e:I

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 8

    const/16 v5, 0x20

    const/16 v4, 0xd

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/baidu/wallet/base/widget/s;->c:Z

    if-eqz v0, :cond_121

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/s;->f:Lcom/baidu/wallet/base/widget/DivisionEditText;

    invoke-virtual {v0}, Lcom/baidu/wallet/base/widget/DivisionEditText;->isFormatEnabled()Z

    move-result v0

    if-eqz v0, :cond_121

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/s;->f:Lcom/baidu/wallet/base/widget/DivisionEditText;

    invoke-virtual {v0}, Lcom/baidu/wallet/base/widget/DivisionEditText;->getSelectionEnd()I

    move-result v0

    iput v0, p0, Lcom/baidu/wallet/base/widget/s;->d:I

    move v0, v1

    :goto_1a
    iget-object v2, p0, Lcom/baidu/wallet/base/widget/s;->h:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-ge v0, v2, :cond_33

    iget-object v2, p0, Lcom/baidu/wallet/base/widget/s;->h:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    if-ne v2, v5, :cond_30

    iget-object v2, p0, Lcom/baidu/wallet/base/widget/s;->h:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto :goto_1a

    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    :cond_33
    iget-object v0, p0, Lcom/baidu/wallet/base/widget/s;->f:Lcom/baidu/wallet/base/widget/DivisionEditText;

    invoke-static {v0}, Lcom/baidu/wallet/base/widget/DivisionEditText;->c(Lcom/baidu/wallet/base/widget/DivisionEditText;)I

    move-result v0

    if-ne v0, v4, :cond_56

    move v0, v1

    move v2, v1

    :goto_3d
    iget-object v3, p0, Lcom/baidu/wallet/base/widget/s;->h:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-ge v2, v3, :cond_a9

    const/4 v3, 0x3

    if-eq v2, v3, :cond_4c

    const/16 v3, 0x8

    if-ne v2, v3, :cond_53

    :cond_4c
    iget-object v3, p0, Lcom/baidu/wallet/base/widget/s;->h:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v2, v5}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    :cond_53
    add-int/lit8 v2, v2, 0x1

    goto :goto_3d

    :cond_56
    iget-object v0, p0, Lcom/baidu/wallet/base/widget/s;->f:Lcom/baidu/wallet/base/widget/DivisionEditText;

    invoke-static {v0}, Lcom/baidu/wallet/base/widget/DivisionEditText;->c(Lcom/baidu/wallet/base/widget/DivisionEditText;)I

    move-result v0

    const/16 v2, 0x18

    if-ne v0, v2, :cond_83

    move v0, v1

    move v2, v1

    :goto_62
    iget-object v3, p0, Lcom/baidu/wallet/base/widget/s;->h:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-ge v2, v3, :cond_a9

    const/4 v3, 0x4

    if-eq v2, v3, :cond_79

    const/16 v3, 0x9

    if-eq v2, v3, :cond_79

    const/16 v3, 0xe

    if-eq v2, v3, :cond_79

    const/16 v3, 0x13

    if-ne v2, v3, :cond_80

    :cond_79
    iget-object v3, p0, Lcom/baidu/wallet/base/widget/s;->h:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v2, v5}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    :cond_80
    add-int/lit8 v2, v2, 0x1

    goto :goto_62

    :cond_83
    iget-object v0, p0, Lcom/baidu/wallet/base/widget/s;->f:Lcom/baidu/wallet/base/widget/DivisionEditText;

    invoke-static {v0}, Lcom/baidu/wallet/base/widget/DivisionEditText;->c(Lcom/baidu/wallet/base/widget/DivisionEditText;)I

    move-result v0

    const/16 v2, 0x14

    if-ne v0, v2, :cond_a8

    move v0, v1

    move v2, v1

    :goto_8f
    iget-object v3, p0, Lcom/baidu/wallet/base/widget/s;->h:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-ge v2, v3, :cond_a9

    const/4 v3, 0x6

    if-eq v2, v3, :cond_9e

    const/16 v3, 0xf

    if-ne v2, v3, :cond_a5

    :cond_9e
    iget-object v3, p0, Lcom/baidu/wallet/base/widget/s;->h:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v2, v5}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    :cond_a5
    add-int/lit8 v2, v2, 0x1

    goto :goto_8f

    :cond_a8
    move v0, v1

    :cond_a9
    iget v2, p0, Lcom/baidu/wallet/base/widget/s;->e:I

    if-le v0, v2, :cond_b5

    iget v2, p0, Lcom/baidu/wallet/base/widget/s;->d:I

    iget v3, p0, Lcom/baidu/wallet/base/widget/s;->e:I

    sub-int/2addr v0, v3

    add-int/2addr v0, v2

    iput v0, p0, Lcom/baidu/wallet/base/widget/s;->d:I

    :cond_b5
    iget-object v0, p0, Lcom/baidu/wallet/base/widget/s;->h:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/baidu/wallet/base/widget/s;->g:[C

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/s;->h:Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/baidu/wallet/base/widget/s;->h:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    iget-object v3, p0, Lcom/baidu/wallet/base/widget/s;->g:[C

    invoke-virtual {v0, v1, v2, v3, v1}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/s;->h:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lcom/baidu/wallet/base/widget/s;->f:Lcom/baidu/wallet/base/widget/DivisionEditText;

    invoke-static {v3}, Lcom/baidu/wallet/base/widget/DivisionEditText;->c(Lcom/baidu/wallet/base/widget/DivisionEditText;)I

    move-result v3

    if-le v2, v3, :cond_e8

    iget-object v2, p0, Lcom/baidu/wallet/base/widget/s;->f:Lcom/baidu/wallet/base/widget/DivisionEditText;

    invoke-static {v2}, Lcom/baidu/wallet/base/widget/DivisionEditText;->c(Lcom/baidu/wallet/base/widget/DivisionEditText;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_e8
    iget v2, p0, Lcom/baidu/wallet/base/widget/s;->d:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v2, v3, :cond_122

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    iput v2, p0, Lcom/baidu/wallet/base/widget/s;->d:I

    :cond_f6
    :goto_f6
    iget-object v2, p0, Lcom/baidu/wallet/base/widget/s;->f:Lcom/baidu/wallet/base/widget/DivisionEditText;

    invoke-virtual {v2, v0}, Lcom/baidu/wallet/base/widget/DivisionEditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/s;->f:Lcom/baidu/wallet/base/widget/DivisionEditText;

    invoke-virtual {v0}, Lcom/baidu/wallet/base/widget/DivisionEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    iget v2, p0, Lcom/baidu/wallet/base/widget/s;->d:I

    invoke-static {v0, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    iget-object v2, p0, Lcom/baidu/wallet/base/widget/s;->f:Lcom/baidu/wallet/base/widget/DivisionEditText;

    invoke-static {v2}, Lcom/baidu/wallet/base/widget/DivisionEditText;->c(Lcom/baidu/wallet/base/widget/DivisionEditText;)I

    move-result v2

    if-ne v2, v4, :cond_11f

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v2

    if-ne v2, v4, :cond_11f

    iget v2, p0, Lcom/baidu/wallet/base/widget/s;->a:I

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v3

    if-ge v2, v3, :cond_11f

    invoke-static {v0, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    :cond_11f
    iput-boolean v1, p0, Lcom/baidu/wallet/base/widget/s;->c:Z

    :cond_121
    return-void

    :cond_122
    iget v2, p0, Lcom/baidu/wallet/base/widget/s;->d:I

    if-gez v2, :cond_f6

    iput v1, p0, Lcom/baidu/wallet/base/widget/s;->d:I

    goto :goto_f6
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 8

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iput v1, p0, Lcom/baidu/wallet/base/widget/s;->a:I

    iget-object v1, p0, Lcom/baidu/wallet/base/widget/s;->h:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_1a

    iget-object v1, p0, Lcom/baidu/wallet/base/widget/s;->h:Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/baidu/wallet/base/widget/s;->h:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    :cond_1a
    iput v0, p0, Lcom/baidu/wallet/base/widget/s;->e:I

    :goto_1c
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_33

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_30

    iget v1, p0, Lcom/baidu/wallet/base/widget/s;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/baidu/wallet/base/widget/s;->e:I

    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    :cond_33
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 7

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iput v0, p0, Lcom/baidu/wallet/base/widget/s;->b:I

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/s;->h:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v0, p0, Lcom/baidu/wallet/base/widget/s;->b:I

    iget v1, p0, Lcom/baidu/wallet/base/widget/s;->a:I

    if-eq v0, v1, :cond_23

    iget v0, p0, Lcom/baidu/wallet/base/widget/s;->b:I

    iget-object v1, p0, Lcom/baidu/wallet/base/widget/s;->f:Lcom/baidu/wallet/base/widget/DivisionEditText;

    invoke-static {v1}, Lcom/baidu/wallet/base/widget/DivisionEditText;->b(Lcom/baidu/wallet/base/widget/DivisionEditText;)I

    move-result v1

    if-lt v0, v1, :cond_23

    iget-boolean v0, p0, Lcom/baidu/wallet/base/widget/s;->c:Z

    if-eqz v0, :cond_27

    :cond_23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/wallet/base/widget/s;->c:Z

    :goto_26
    return-void

    :cond_27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/wallet/base/widget/s;->c:Z

    goto :goto_26
.end method
