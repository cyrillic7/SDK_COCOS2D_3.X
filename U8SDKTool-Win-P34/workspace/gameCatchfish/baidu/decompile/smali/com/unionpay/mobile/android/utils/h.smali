.class public final Lcom/unionpay/mobile/android/utils/h;
.super Ljava/lang/Object;


# static fields
.field private static a:Z

.field private static b:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/unionpay/mobile/android/utils/h;->a:Z

    sput-boolean v0, Lcom/unionpay/mobile/android/utils/h;->a:Z

    const v0, 0x7fffffff

    sput v0, Lcom/unionpay/mobile/android/utils/h;->b:I

    return-void
.end method

.method private static a(ILjava/lang/String;Ljava/lang/String;)I
    .registers 8

    const/4 v0, 0x0

    if-eqz p1, :cond_77

    if-eqz p2, :cond_77

    packed-switch p0, :pswitch_data_98

    :goto_8
    sget-boolean v1, Lcom/unionpay/mobile/android/utils/h;->a:Z

    if-eqz v1, :cond_77

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[ ERROR ] "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :try_start_25
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "upmp_log.txt"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_54

    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    :cond_54
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_77} :catch_93

    :cond_77
    :goto_77
    return v0

    :pswitch_78
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_8

    :pswitch_7d
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_8

    :pswitch_82
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_8

    :pswitch_87
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_8

    :pswitch_8d
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_8

    :catch_93
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_77

    :pswitch_data_98
    .packed-switch 0x2
        :pswitch_87
        :pswitch_78
        :pswitch_82
        :pswitch_8d
        :pswitch_7d
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    const/4 v1, 0x3

    sget v0, Lcom/unionpay/mobile/android/utils/h;->b:I

    if-gt v0, v1, :cond_8

    invoke-static {v1, p0, p1}, Lcom/unionpay/mobile/android/utils/h;->a(ILjava/lang/String;Ljava/lang/String;)I

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    const/4 v1, 0x4

    sget v0, Lcom/unionpay/mobile/android/utils/h;->b:I

    if-gt v0, v1, :cond_8

    invoke-static {v1, p0, p1}, Lcom/unionpay/mobile/android/utils/h;->a(ILjava/lang/String;Ljava/lang/String;)I

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    const/4 v2, 0x6

    const/4 v0, 0x0

    sget v1, Lcom/unionpay/mobile/android/utils/h;->b:I

    if-gt v1, v2, :cond_a

    invoke-static {v2, p0, p1}, Lcom/unionpay/mobile/android/utils/h;->a(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    :cond_a
    return v0
.end method
