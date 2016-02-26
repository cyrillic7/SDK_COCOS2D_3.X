.class public final Lcom/unionpay/mobile/android/pboctransaction/sdapdu/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unionpay/mobile/android/pboctransaction/c;


# instance fields
.field a:Lcom/unionpay/mobile/android/pboctransaction/sdapdu/NativeSDWriter;

.field private b:Landroid/content/Context;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/sdapdu/a;->b:Landroid/content/Context;

    iput-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/sdapdu/a;->a:Lcom/unionpay/mobile/android/pboctransaction/sdapdu/NativeSDWriter;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unionpay/mobile/android/pboctransaction/sdapdu/a;->c:Z

    return-void
.end method

.method private static b(Lcom/unionpay/mobile/android/pboctransaction/d;)Ljava/util/ArrayList;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unionpay/mobile/android/pboctransaction/d;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/unionpay/mobile/android/model/c;",
            ">;"
        }
    .end annotation

    const/16 v13, 0x28

    const/4 v3, 0x1

    const/high16 v2, -0x80000000

    const/4 v1, 0x0

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/pboctransaction/d;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_16

    const-string v0, "uppay"

    const-string v2, " select UPCard failed!!!!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    :goto_15
    return-object v0

    :cond_16
    invoke-virtual {p0}, Lcom/unionpay/mobile/android/pboctransaction/d;->c()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_25

    const-string v0, "uppay"

    const-string v2, " getBankCardFileEntry failed!!!!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_15

    :cond_25
    invoke-static {v0}, Lcom/unionpay/mobile/android/pboctransaction/e;->a(Ljava/lang/String;)[B

    move-result-object v0

    aget-byte v4, v0, v10

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    or-int v11, v4, v0

    move v4, v2

    move v6, v10

    move v5, v10

    :goto_3a
    const/16 v0, 0xa

    if-ge v5, v0, :cond_4a

    and-int v0, v4, v11

    if-nez v0, :cond_c7

    add-int/lit8 v0, v6, 0x1

    :goto_44
    ushr-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    move v6, v0

    goto :goto_3a

    :cond_4a
    if-gtz v6, :cond_4e

    move-object v0, v1

    goto :goto_15

    :cond_4e
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v6}, Ljava/util/ArrayList;-><init>(I)V

    move v8, v2

    move v9, v3

    :goto_55
    if-gt v9, v6, :cond_c4

    const/16 v0, 0xb

    if-ge v9, v0, :cond_c4

    and-int v0, v11, v8

    if-nez v0, :cond_b7

    invoke-static {}, Lcom/unionpay/mobile/android/utils/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v9, v0}, Lcom/unionpay/mobile/android/pboctransaction/d;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_b7

    invoke-virtual {v2, v10, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unionpay/mobile/android/pboctransaction/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_77
    new-instance v3, Ljava/lang/String;

    invoke-static {v0}, Lcom/unionpay/mobile/android/pboctransaction/e;->a(Ljava/lang/String;)[B

    move-result-object v1

    const-string v4, "gbk"

    invoke-direct {v3, v1, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_82
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_77 .. :try_end_82} :catch_be

    :goto_82
    const/16 v0, 0x3c

    invoke-virtual {v2, v13, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    new-instance v0, Lcom/unionpay/mobile/android/model/a;

    const/16 v1, 0x8

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v12}, Lcom/unionpay/mobile/android/pboctransaction/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-direct/range {v0 .. v5}, Lcom/unionpay/mobile/android/model/a;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "uppay"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "----"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/h;->c(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b7
    add-int/lit8 v1, v9, 0x1

    ushr-int/lit8 v0, v8, 0x1

    move v8, v0

    move v9, v1

    goto :goto_55

    :catch_be
    move-exception v1

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    move-object v3, v0

    goto :goto_82

    :cond_c4
    move-object v0, v7

    goto/16 :goto_15

    :cond_c7
    move v0, v6

    goto/16 :goto_44
.end method


# virtual methods
.method public final a(Lcom/unionpay/mobile/android/pboctransaction/d;)Ljava/util/ArrayList;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unionpay/mobile/android/pboctransaction/d;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/unionpay/mobile/android/model/c;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v5, 0x1

    const-string v1, "uppay"

    const-string v2, "SDEngine.readList() +++"

    invoke-static {v1, v2}, Lcom/unionpay/mobile/android/utils/h;->c(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/unionpay/mobile/android/pboctransaction/sdapdu/a;->c:Z

    if-nez v1, :cond_e

    :goto_d
    return-object v0

    :cond_e
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "A0000003330101"

    new-instance v1, Lcom/unionpay/mobile/android/pboctransaction/AppIdentification;

    const-string v3, "1.0"

    invoke-direct {v1, v2, v3}, Lcom/unionpay/mobile/android/pboctransaction/AppIdentification;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/unionpay/mobile/android/pboctransaction/d;->a(Lcom/unionpay/mobile/android/pboctransaction/AppIdentification;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5a

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5a

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v5}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v0, Lcom/unionpay/mobile/android/model/a;

    const/16 v1, 0x8

    const-string v3, ""

    invoke-static {v8}, Lcom/unionpay/mobile/android/pboctransaction/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Lcom/unionpay/mobile/android/model/a;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "uppay"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "----"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/h;->c(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v7

    :cond_5a
    if-eqz v0, :cond_65

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_65

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_65
    invoke-static {p1}, Lcom/unionpay/mobile/android/pboctransaction/sdapdu/a;->b(Lcom/unionpay/mobile/android/pboctransaction/d;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_74

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_74

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_74
    const-string v0, "uppay"

    const-string v1, "SDEngine.readList() ---"

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/h;->c(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v6

    goto :goto_d
.end method

.method public final a()V
    .registers 1

    return-void
.end method

.method public final a(Lcom/unionpay/mobile/android/pboctransaction/b;Landroid/content/Context;)V
    .registers 3

    iput-object p2, p0, Lcom/unionpay/mobile/android/pboctransaction/sdapdu/a;->b:Landroid/content/Context;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Lcom/unionpay/mobile/android/pboctransaction/b;->a()V

    :cond_7
    return-void
.end method

.method public final a([BI)[B
    .registers 5

    const-string v0, ""

    iget-object v1, p0, Lcom/unionpay/mobile/android/pboctransaction/sdapdu/a;->a:Lcom/unionpay/mobile/android/pboctransaction/sdapdu/NativeSDWriter;

    if-eqz v1, :cond_11

    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/sdapdu/a;->a:Lcom/unionpay/mobile/android/pboctransaction/sdapdu/NativeSDWriter;

    array-length v1, p1

    invoke-static {p1, v1}, Lcom/unionpay/mobile/android/pboctransaction/e;->a([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/pboctransaction/sdapdu/NativeSDWriter;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_11
    invoke-static {v0}, Lcom/unionpay/mobile/android/pboctransaction/e;->a(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public final b()V
    .registers 6

    new-instance v0, Lcom/unionpay/mobile/android/pboctransaction/sdapdu/NativeSDWriter;

    iget-object v1, p0, Lcom/unionpay/mobile/android/pboctransaction/sdapdu/a;->b:Landroid/content/Context;

    invoke-direct {v0}, Lcom/unionpay/mobile/android/pboctransaction/sdapdu/NativeSDWriter;-><init>()V

    iput-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/sdapdu/a;->a:Lcom/unionpay/mobile/android/pboctransaction/sdapdu/NativeSDWriter;

    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/sdapdu/a;->b:Landroid/content/Context;

    invoke-static {}, Lcom/unionpay/mobile/android/pboctransaction/sdapdu/b;->a()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Lcom/unionpay/mobile/android/pboctransaction/sdapdu/b;->a:[Ljava/lang/String;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_17
    if-ge v0, v3, :cond_21

    aget-object v4, v2, v0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_21
    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/sdapdu/a;->a:Lcom/unionpay/mobile/android/pboctransaction/sdapdu/NativeSDWriter;

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/pboctransaction/sdapdu/NativeSDWriter;->a(Ljava/util/ArrayList;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/unionpay/mobile/android/pboctransaction/sdapdu/a;->c:Z

    return-void
.end method

.method public final c()V
    .registers 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/sdapdu/a;->a:Lcom/unionpay/mobile/android/pboctransaction/sdapdu/NativeSDWriter;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/sdapdu/a;->a:Lcom/unionpay/mobile/android/pboctransaction/sdapdu/NativeSDWriter;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/pboctransaction/sdapdu/NativeSDWriter;->a()Z

    :cond_9
    return-void
.end method

.method public final d()V
    .registers 1

    return-void
.end method
