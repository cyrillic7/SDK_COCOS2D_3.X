.class final Lcom/unionpay/mobile/android/widgets/af;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/unionpay/mobile/android/widgets/ae;

.field private b:Z

.field private c:I

.field private d:Z


# direct methods
.method constructor <init>(Lcom/unionpay/mobile/android/widgets/ae;)V
    .registers 3

    iput-object p1, p0, Lcom/unionpay/mobile/android/widgets/af;->a:Lcom/unionpay/mobile/android/widgets/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unionpay/mobile/android/widgets/af;->b:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unionpay/mobile/android/widgets/af;->d:Z

    return-void
.end method

.method private a(Ljava/lang/CharSequence;I)Ljava/lang/String;
    .registers 11

    const/4 v0, 0x0

    const/16 v7, 0x20

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    move v1, v0

    :goto_d
    if-ge v1, v2, :cond_31

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-eq v4, v7, :cond_21

    add-int/lit8 v0, v0, 0x1

    if-eqz v1, :cond_21

    and-int/lit8 v5, v0, 0x3

    const/4 v6, 0x1

    if-ne v5, v6, :cond_21

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_21
    if-ne v1, p2, :cond_29

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    iput v5, p0, Lcom/unionpay/mobile/android/widgets/af;->c:I

    :cond_29
    if-eq v4, v7, :cond_2e

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_31
    if-ne p2, v2, :cond_39

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    iput v0, p0, Lcom/unionpay/mobile/android/widgets/af;->c:I

    :cond_39
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .registers 2

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 8

    const/4 v2, 0x1

    if-ne p3, v2, :cond_f

    if-nez p4, :cond_f

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_f

    iput-boolean v2, p0, Lcom/unionpay/mobile/android/widgets/af;->d:Z

    :cond_f
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 9

    const/16 v1, 0x17

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/unionpay/mobile/android/widgets/af;->b:Z

    if-nez v0, :cond_8

    :goto_7
    return-void

    :cond_8
    iget-boolean v0, p0, Lcom/unionpay/mobile/android/widgets/af;->d:Z

    if-eqz v0, :cond_5b

    add-int/lit8 v0, p2, -0x1

    invoke-interface {p1, v3, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge p2, v2, :cond_35

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {p1, p2, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_35
    add-int/lit8 p2, p2, -0x1

    iput-boolean v3, p0, Lcom/unionpay/mobile/android/widgets/af;->d:Z

    :goto_39
    iput-boolean v3, p0, Lcom/unionpay/mobile/android/widgets/af;->b:Z

    add-int v2, p2, p4

    invoke-direct {p0, v0, v2}, Lcom/unionpay/mobile/android/widgets/af;->a(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/af;->a:Lcom/unionpay/mobile/android/widgets/ae;

    iget-object v2, v2, Lcom/unionpay/mobile/android/widgets/ae;->b:Lcom/unionpay/mobile/android/widgets/t;

    invoke-virtual {v2, v0}, Lcom/unionpay/mobile/android/widgets/t;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/af;->a:Lcom/unionpay/mobile/android/widgets/ae;

    iget-object v2, v0, Lcom/unionpay/mobile/android/widgets/ae;->b:Lcom/unionpay/mobile/android/widgets/t;

    iget v0, p0, Lcom/unionpay/mobile/android/widgets/af;->c:I

    if-gt v0, v1, :cond_59

    iget v0, p0, Lcom/unionpay/mobile/android/widgets/af;->c:I

    :goto_52
    invoke-virtual {v2, v0}, Lcom/unionpay/mobile/android/widgets/t;->b(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unionpay/mobile/android/widgets/af;->b:Z

    goto :goto_7

    :cond_59
    move v0, v1

    goto :goto_52

    :cond_5b
    move-object v0, p1

    goto :goto_39
.end method
