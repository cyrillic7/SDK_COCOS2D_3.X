.class public final Lcom/unionpay/mobile/android/widgets/bc$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unionpay/mobile/android/widgets/bc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/unionpay/mobile/android/widgets/bc;

.field private b:Lcom/unionpay/mobile/android/widgets/t;

.field private c:Ljava/math/BigDecimal;

.field private d:Ljava/math/BigDecimal;


# direct methods
.method public constructor <init>(Lcom/unionpay/mobile/android/widgets/bc;Lcom/unionpay/mobile/android/widgets/t;Ljava/math/BigDecimal;Ljava/math/BigDecimal;)V
    .registers 7

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/unionpay/mobile/android/widgets/bc$a;->a:Lcom/unionpay/mobile/android/widgets/bc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/bc$a;->b:Lcom/unionpay/mobile/android/widgets/t;

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/bc$a;->c:Ljava/math/BigDecimal;

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/bc$a;->d:Ljava/math/BigDecimal;

    iput-object p2, p0, Lcom/unionpay/mobile/android/widgets/bc$a;->b:Lcom/unionpay/mobile/android/widgets/t;

    iput-object p3, p0, Lcom/unionpay/mobile/android/widgets/bc$a;->c:Ljava/math/BigDecimal;

    iput-object p4, p0, Lcom/unionpay/mobile/android/widgets/bc$a;->d:Ljava/math/BigDecimal;

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/bc$a;->c:Ljava/math/BigDecimal;

    sget-object v1, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/bc$a;->c:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unionpay/mobile/android/widgets/bc$a;->c(Ljava/lang/String;)V

    :cond_26
    return-void
.end method

.method private static a(Ljava/lang/String;)I
    .registers 3

    if-eqz p0, :cond_8

    invoke-static {p0}, Lcom/unionpay/mobile/android/widgets/bc$a;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_9
.end method

.method private a(Ljava/lang/String;ZZ)Ljava/lang/CharSequence;
    .registers 9

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/bc$a;->d:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/bc$a;->c:Ljava/math/BigDecimal;

    invoke-virtual {v1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v1

    :try_start_c
    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x2

    const/4 v4, 0x6

    invoke-virtual {v2, v3, v4}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    if-eqz p2, :cond_26

    if-eqz p3, :cond_26

    iget-object v3, p0, Lcom/unionpay/mobile/android/widgets/bc$a;->c:Ljava/math/BigDecimal;

    invoke-virtual {v2, v3}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_26

    invoke-direct {p0, v1}, Lcom/unionpay/mobile/android/widgets/bc$a;->c(Ljava/lang/String;)V

    :cond_26
    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/bc$a;->d:Ljava/math/BigDecimal;

    invoke-virtual {v2, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_32

    invoke-direct {p0, v0}, Lcom/unionpay/mobile/android/widgets/bc$a;->c(Ljava/lang/String;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_32} :catch_34

    :cond_32
    const/4 v0, 0x0

    :goto_33
    return-object v0

    :catch_34
    move-exception v0

    const-string v0, ""

    goto :goto_33
.end method

.method private static b(Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_c

    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private c(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/bc$a;->b:Lcom/unionpay/mobile/android/widgets/t;

    invoke-virtual {v0, p1}, Lcom/unionpay/mobile/android/widgets/t;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/bc$a;->b:Lcom/unionpay/mobile/android/widgets/t;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/widgets/t;->c()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/bc$a;->b:Lcom/unionpay/mobile/android/widgets/t;

    invoke-virtual {v1}, Lcom/unionpay/mobile/android/widgets/t;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    return-void
.end method


# virtual methods
.method public final filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .registers 14

    const/16 v5, 0x30

    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_46

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4, v0, p5}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v3

    invoke-interface {p4, p6, v3}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sub-int v3, p6, p5

    if-eq v3, v1, :cond_41

    move v0, v1

    :cond_41
    invoke-direct {p0, v2, v1, v0}, Lcom/unionpay/mobile/android/widgets/bc$a;->a(Ljava/lang/String;ZZ)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_45
    return-object v0

    :cond_46
    sub-int v2, p3, p2

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/unionpay/mobile/android/widgets/bc$a;->b(Ljava/lang/String;)Z

    move-result v3

    if-ne v1, v2, :cond_b4

    if-nez v3, :cond_63

    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v4

    if-ne v4, v1, :cond_63

    invoke-interface {p4, v0}, Landroid/text/Spanned;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_63

    const-string v0, "."

    goto :goto_45

    :cond_63
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-ne v5, v4, :cond_76

    if-nez p5, :cond_76

    if-nez p6, :cond_76

    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v4

    if-eqz v4, :cond_76

    const-string v0, ""

    goto :goto_45

    :cond_76
    const/16 v4, 0x2e

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-ne v4, v5, :cond_97

    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v4

    if-nez v4, :cond_87

    const-string v0, ""

    goto :goto_45

    :cond_87
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v4

    if-eqz v4, :cond_97

    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v4

    sub-int/2addr v4, p5

    if-le v4, v6, :cond_97

    const-string v0, ""

    goto :goto_45

    :cond_97
    if-eqz v3, :cond_dd

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-le p5, v3, :cond_dd

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/unionpay/mobile/android/widgets/bc$a;->a(Ljava/lang/String;)I

    move-result v3

    rsub-int/lit8 v2, v2, 0x2

    if-le v3, v2, :cond_dd

    const-string v0, ""

    goto :goto_45

    :cond_b4
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/unionpay/mobile/android/widgets/bc$a;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c3

    if-eqz v3, :cond_c3

    const-string v0, ""

    goto :goto_45

    :cond_c3
    if-eqz v2, :cond_dd

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/unionpay/mobile/android/widgets/bc$a;->a(Ljava/lang/String;)I

    move-result v2

    if-gt v2, v6, :cond_d9

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v2, p6, :cond_dd

    :cond_d9
    const-string v0, ""

    goto/16 :goto_45

    :cond_dd
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4, v0, p5}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v3

    invoke-interface {p4, p6, v3}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/unionpay/mobile/android/widgets/bc$a;->a(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v6, :cond_116

    :goto_110
    invoke-direct {p0, v2, v0, v1}, Lcom/unionpay/mobile/android/widgets/bc$a;->a(Ljava/lang/String;ZZ)Ljava/lang/CharSequence;

    move-result-object v0

    goto/16 :goto_45

    :cond_116
    move v1, v0

    goto :goto_110
.end method
