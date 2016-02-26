.class public Lcom/unionpay/mobile/android/widgets/bc;
.super Lcom/unionpay/mobile/android/widgets/z;

# interfaces
.implements Lcom/unionpay/mobile/android/widgets/t$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unionpay/mobile/android/widgets/bc$a;
    }
.end annotation


# static fields
.field private static final n:Ljava/lang/String;


# instance fields
.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/unionpay/mobile/android/widgets/bc;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unionpay/mobile/android/widgets/bc;->n:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILorg/json/JSONObject;)V
    .registers 11

    const/4 v4, 0x6

    const/4 v6, 0x2

    const/4 v5, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/unionpay/mobile/android/widgets/z;-><init>(Landroid/content/Context;ILorg/json/JSONObject;)V

    iput-object v5, p0, Lcom/unionpay/mobile/android/widgets/bc;->o:Ljava/lang/String;

    iput-object v5, p0, Lcom/unionpay/mobile/android/widgets/bc;->p:Ljava/lang/String;

    iput-object v5, p0, Lcom/unionpay/mobile/android/widgets/bc;->q:Ljava/lang/String;

    iput-object v5, p0, Lcom/unionpay/mobile/android/widgets/bc;->r:Ljava/lang/String;

    iput-object v5, p0, Lcom/unionpay/mobile/android/widgets/bc;->s:Ljava/lang/String;

    const-string v0, "point"

    invoke-static {p3, v0}, Lcom/unionpay/mobile/android/utils/g;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/bc;->r:Ljava/lang/String;

    const-string v0, "max_use_point"

    invoke-static {p3, v0}, Lcom/unionpay/mobile/android/utils/g;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/bc;->q:Ljava/lang/String;

    const-string v0, "min_use_point"

    invoke-static {p3, v0}, Lcom/unionpay/mobile/android/utils/g;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/bc;->p:Ljava/lang/String;

    const-string v0, "ratio"

    invoke-static {p3, v0}, Lcom/unionpay/mobile/android/utils/g;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/bc;->s:Ljava/lang/String;

    const-string v0, "ordr_amnt"

    invoke-static {p3, v0}, Lcom/unionpay/mobile/android/utils/g;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/bc;->o:Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/bc;->b:Lcom/unionpay/mobile/android/widgets/t;

    const/16 v1, 0x2002

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/widgets/t;->a(I)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/bc;->b:Lcom/unionpay/mobile/android/widgets/t;

    const-string v1, "0123456789."

    invoke-static {v1}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/widgets/t;->a(Landroid/text/InputFilter;)V

    :try_start_4a
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/bc;->p:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_51} :catch_a0
    .catchall {:try_start_4a .. :try_end_51} :catchall_a9

    invoke-virtual {v0, v6, v4}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    move-object v1, v0

    :goto_56
    :try_start_56
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/bc;->q:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_5d} :catch_ae
    .catchall {:try_start_56 .. :try_end_5d} :catchall_be

    invoke-virtual {v0, v6, v4}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    :goto_61
    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/bc;->b:Lcom/unionpay/mobile/android/widgets/t;

    new-instance v3, Lcom/unionpay/mobile/android/widgets/bc$a;

    iget-object v4, p0, Lcom/unionpay/mobile/android/widgets/bc;->b:Lcom/unionpay/mobile/android/widgets/t;

    invoke-direct {v3, p0, v4, v1, v0}, Lcom/unionpay/mobile/android/widgets/bc$a;-><init>(Lcom/unionpay/mobile/android/widgets/bc;Lcom/unionpay/mobile/android/widgets/t;Ljava/math/BigDecimal;Ljava/math/BigDecimal;)V

    invoke-virtual {v2, v3}, Lcom/unionpay/mobile/android/widgets/t;->a(Landroid/text/InputFilter;)V

    invoke-direct {p0, v5, v5}, Lcom/unionpay/mobile/android/widgets/bc;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/widgets/bc;->p()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_80

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/widgets/bc;->p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9a

    :cond_80
    invoke-virtual {p0}, Lcom/unionpay/mobile/android/widgets/bc;->s()V

    sget-object v0, Lcom/unionpay/mobile/android/languages/c;->by:Lcom/unionpay/mobile/android/languages/c;

    iget-object v0, v0, Lcom/unionpay/mobile/android/languages/c;->ay:Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/unionpay/mobile/android/widgets/bc;->r:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/unionpay/mobile/android/widgets/bc;->s:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/widgets/bc;->c(Ljava/lang/String;)V

    :cond_9a
    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/bc;->b:Lcom/unionpay/mobile/android/widgets/t;

    invoke-virtual {v0, p0}, Lcom/unionpay/mobile/android/widgets/t;->a(Lcom/unionpay/mobile/android/widgets/t$a;)V

    return-void

    :catch_a0
    move-exception v0

    :try_start_a1
    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;
    :try_end_a3
    .catchall {:try_start_a1 .. :try_end_a3} :catchall_a9

    invoke-virtual {v0, v6, v4}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    move-object v1, v0

    goto :goto_56

    :catchall_a9
    move-exception v0

    invoke-virtual {v5, v6, v4}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    throw v0

    :catch_ae
    move-exception v0

    :try_start_af
    new-instance v0, Ljava/math/BigDecimal;

    const-wide v2, 0x47efffffe0000000L

    invoke-direct {v0, v2, v3}, Ljava/math/BigDecimal;-><init>(D)V
    :try_end_b9
    .catchall {:try_start_af .. :try_end_b9} :catchall_be

    invoke-virtual {v0, v6, v4}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_61

    :catchall_be
    move-exception v0

    invoke-virtual {v5, v6, v4}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    throw v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    const/4 v4, 0x1

    const v3, -0xf38086

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/widgets/bc;->o()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/widgets/bc;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_41

    :cond_15
    invoke-virtual {p0}, Lcom/unionpay/mobile/android/widgets/bc;->r()V

    if-nez p1, :cond_42

    sget-object v0, Lcom/unionpay/mobile/android/languages/c;->by:Lcom/unionpay/mobile/android/languages/c;

    iget-object v0, v0, Lcom/unionpay/mobile/android/languages/c;->aw:Ljava/lang/String;

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/bc;->q:Ljava/lang/String;

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v2, v6, v1, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :goto_39
    invoke-virtual {p0}, Lcom/unionpay/mobile/android/widgets/bc;->t()V

    sget-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v0, v1}, Lcom/unionpay/mobile/android/widgets/bc;->a(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    :cond_41
    return-void

    :cond_42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/unionpay/mobile/android/languages/c;->by:Lcom/unionpay/mobile/android/languages/c;

    iget-object v1, v1, Lcom/unionpay/mobile/android/languages/c;->aw:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/bc;->q:Ljava/lang/String;

    aput-object v2, v1, v6

    aput-object p2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\u5143"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v0, v2, v6, v3, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    const v3, -0xadae

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\u5143"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v2, v3, v1, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_39
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    invoke-super {p0}, Lcom/unionpay/mobile/android/widgets/z;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_e

    :cond_d
    :goto_d
    return-object v0

    :cond_e
    :try_start_e
    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x2

    const/4 v3, 0x6

    invoke-virtual {v2, v1, v3}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    sget-object v1, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v2, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_d

    invoke-virtual {v2}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_24} :catch_26

    move-result-object v0

    goto :goto_d

    :catch_26
    move-exception v1

    goto :goto_d
.end method

.method public final a(Landroid/text/Editable;)V
    .registers 8

    const/4 v5, 0x0

    invoke-super {p0, p1}, Lcom/unionpay/mobile/android/widgets/z;->a(Landroid/text/Editable;)V

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/widgets/bc;->o()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/widgets/bc;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_56

    :cond_14
    :try_start_14
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/bc;->s:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x2

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    new-instance v1, Ljava/math/BigDecimal;

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/bc;->o:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x2

    const/4 v3, 0x6

    invoke-virtual {v1, v2, v3}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v1

    new-instance v2, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/widgets/bc;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x2

    const/4 v4, 0x6

    invoke-virtual {v2, v3, v4}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    const/4 v2, 0x2

    const/4 v3, 0x6

    invoke-virtual {v0, v2, v3}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    sget-object v1, Lcom/unionpay/mobile/android/languages/c;->by:Lcom/unionpay/mobile/android/languages/c;

    iget-object v1, v1, Lcom/unionpay/mobile/android/languages/c;->ax:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/unionpay/mobile/android/widgets/bc;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_56} :catch_57

    :cond_56
    :goto_56
    return-void

    :catch_57
    move-exception v0

    invoke-direct {p0, v5, v5}, Lcom/unionpay/mobile/android/widgets/bc;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_56
.end method

.method public final a(Z)V
    .registers 3

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/bc;->k:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/widgets/bc;->a(Landroid/view/View;)Z

    :cond_7
    return-void
.end method

.method public final b()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final c()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final g()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/widgets/bc;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_e

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return-object v0

    :cond_e
    invoke-super {p0}, Lcom/unionpay/mobile/android/widgets/z;->g()Ljava/lang/String;

    move-result-object v0

    goto :goto_d
.end method
