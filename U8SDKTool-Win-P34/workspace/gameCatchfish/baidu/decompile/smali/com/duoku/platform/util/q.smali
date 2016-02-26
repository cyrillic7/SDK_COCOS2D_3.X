.class public Lcom/duoku/platform/util/q;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;

.field private static f:Lcom/duoku/platform/util/k;

.field private static g:Ljava/lang/String;

.field private static h:Ljava/lang/String;

.field private static i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 59
    const-class v0, Lcom/duoku/platform/util/q;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/util/k;->a(Ljava/lang/String;)Lcom/duoku/platform/util/k;

    move-result-object v0

    sput-object v0, Lcom/duoku/platform/util/q;->f:Lcom/duoku/platform/util/k;

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/duoku/sdk/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/duoku/platform/util/q;->g:Ljava/lang/String;

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/duoku/platform/util/q;->g:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "userInfo2.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/duoku/platform/util/q;->h:Ljava/lang/String;

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/duoku/platform/util/q;->g:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "userInfo.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/duoku/platform/util/q;->i:Ljava/lang/String;

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/duoku/sdk/cache/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/duoku/platform/util/q;->a:Ljava/lang/String;

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/duoku/sdk/download/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/duoku/platform/util/q;->b:Ljava/lang/String;

    .line 237
    const-string v0, "duoku/sdk/download"

    sput-object v0, Lcom/duoku/platform/util/q;->c:Ljava/lang/String;

    .line 242
    const-string v0, "logoinfo_h5.txt"

    sput-object v0, Lcom/duoku/platform/util/q;->d:Ljava/lang/String;

    .line 247
    const-string v0, "adinfo.txt"

    sput-object v0, Lcom/duoku/platform/util/q;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 420
    const-class v3, Lcom/duoku/platform/util/q;

    monitor-enter v3

    if-eqz p1, :cond_10

    :try_start_6
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_29

    move-result v1

    if-gtz v1, :cond_12

    .line 455
    :cond_10
    :goto_10
    monitor-exit v3

    return-object v0

    .line 424
    :cond_12
    const/4 v1, 0x0

    .line 429
    :try_start_13
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    invoke-virtual {v4}, Ljava/io/File;->exists()Z
    :try_end_1b
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_1b} :catch_41
    .catchall {:try_start_13 .. :try_end_1b} :catchall_51

    move-result v2

    if-nez v2, :cond_2c

    .line 445
    if-eqz v0, :cond_10

    .line 447
    :try_start_20
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_23} :catch_24
    .catchall {:try_start_20 .. :try_end_23} :catchall_29

    goto :goto_10

    .line 450
    :catch_24
    move-exception v1

    .line 452
    :try_start_25
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_29

    goto :goto_10

    .line 420
    :catchall_29
    move-exception v0

    monitor-exit v3

    throw v0

    .line 434
    :cond_2c
    :try_start_2c
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_31
    .catch Ljava/io/FileNotFoundException; {:try_start_2c .. :try_end_31} :catch_41
    .catchall {:try_start_2c .. :try_end_31} :catchall_51

    .line 435
    const/4 v1, 0x0

    :try_start_32
    invoke-static {v2, v1, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_35
    .catch Ljava/io/FileNotFoundException; {:try_start_32 .. :try_end_35} :catch_61
    .catchall {:try_start_32 .. :try_end_35} :catchall_5f

    move-result-object v0

    .line 445
    if-eqz v2, :cond_10

    .line 447
    :try_start_38
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_3c
    .catchall {:try_start_38 .. :try_end_3b} :catchall_29

    goto :goto_10

    .line 450
    :catch_3c
    move-exception v1

    .line 452
    :try_start_3d
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_29

    goto :goto_10

    .line 437
    :catch_41
    move-exception v1

    move-object v2, v0

    .line 439
    :goto_43
    :try_start_43
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_5f

    .line 445
    if-eqz v2, :cond_10

    .line 447
    :try_start_48
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_4c
    .catchall {:try_start_48 .. :try_end_4b} :catchall_29

    goto :goto_10

    .line 450
    :catch_4c
    move-exception v1

    .line 452
    :try_start_4d
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_50
    .catchall {:try_start_4d .. :try_end_50} :catchall_29

    goto :goto_10

    .line 442
    :catchall_51
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    .line 445
    :goto_54
    if-eqz v2, :cond_59

    .line 447
    :try_start_56
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_59} :catch_5a
    .catchall {:try_start_56 .. :try_end_59} :catchall_29

    .line 454
    :cond_59
    :goto_59
    :try_start_59
    throw v0

    .line 450
    :catch_5a
    move-exception v1

    .line 452
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5e
    .catchall {:try_start_59 .. :try_end_5e} :catchall_29

    goto :goto_59

    .line 442
    :catchall_5f
    move-exception v0

    goto :goto_54

    .line 437
    :catch_61
    move-exception v1

    goto :goto_43
.end method

.method public static declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 318
    const-class v3, Lcom/duoku/platform/util/q;

    monitor-enter v3

    .line 323
    :try_start_4
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 324
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 327
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 328
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v4}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_2a} :catch_35
    .catchall {:try_start_4 .. :try_end_2a} :catchall_48

    .line 329
    :try_start_2a
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2d} :catch_5d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_5b

    move-result-object v0

    .line 339
    :goto_2e
    if-eqz v2, :cond_33

    .line 343
    :try_start_30
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_56
    .catchall {:try_start_30 .. :try_end_33} :catchall_45

    .line 353
    :cond_33
    :goto_33
    monitor-exit v3

    return-object v0

    .line 333
    :catch_35
    move-exception v1

    move-object v2, v0

    .line 335
    :goto_37
    :try_start_37
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_5b

    .line 339
    if-eqz v2, :cond_33

    .line 343
    :try_start_3c
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3f} :catch_40
    .catchall {:try_start_3c .. :try_end_3f} :catchall_45

    goto :goto_33

    .line 346
    :catch_40
    move-exception v1

    .line 348
    :try_start_41
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_45

    goto :goto_33

    .line 318
    :catchall_45
    move-exception v0

    monitor-exit v3

    throw v0

    .line 338
    :catchall_48
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    .line 339
    :goto_4b
    if-eqz v2, :cond_50

    .line 343
    :try_start_4d
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_51
    .catchall {:try_start_4d .. :try_end_50} :catchall_45

    .line 351
    :cond_50
    :goto_50
    :try_start_50
    throw v0

    .line 346
    :catch_51
    move-exception v1

    .line 348
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_50

    .line 346
    :catch_56
    move-exception v1

    .line 348
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5a
    .catchall {:try_start_50 .. :try_end_5a} :catchall_45

    goto :goto_33

    .line 338
    :catchall_5b
    move-exception v0

    goto :goto_4b

    .line 333
    :catch_5d
    move-exception v1

    goto :goto_37

    :cond_5f
    move-object v2, v0

    goto :goto_2e
.end method

.method public static a(Landroid/app/Activity;)V
    .registers 4

    .prologue
    .line 497
    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 499
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 501
    :cond_1a
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 101
    if-eqz p0, :cond_14

    .line 103
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "dk_safe_notice"

    invoke-static {p0, v1}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/duoku/platform/util/p;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 105
    :cond_14
    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/b;->a()Lcom/duoku/platform/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/c/a;->a()Lcom/duoku/platform/ui/DKContainerActivity;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 107
    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/b;->a()Lcom/duoku/platform/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/c/a;->a()Lcom/duoku/platform/ui/DKContainerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/ui/DKContainerActivity;->finish()V

    .line 109
    :cond_31
    invoke-static {}, Lcom/duoku/platform/f/c;->a()Lcom/duoku/platform/f/a;

    move-result-object v0

    const/16 v1, 0x7d5

    invoke-virtual {v0, v1, v2, v2, v2}, Lcom/duoku/platform/f/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 110
    invoke-static {v0}, Lcom/duoku/platform/DKProCallbackListener;->onSuspendWindowChangeUser(Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method public static declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 258
    const-class v4, Lcom/duoku/platform/util/q;

    monitor-enter v4

    :try_start_4
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mounted"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 260
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 261
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1e

    .line 263
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 267
    :cond_1e
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_23
    .catchall {:try_start_4 .. :try_end_23} :catchall_5c

    .line 273
    :try_start_23
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 275
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 279
    :cond_2c
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_31} :catch_49
    .catchall {:try_start_23 .. :try_end_31} :catchall_5f

    .line 280
    :try_start_31
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_36} :catch_7c
    .catchall {:try_start_31 .. :try_end_36} :catchall_74

    .line 281
    :try_start_36
    invoke-virtual {v2, p2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 282
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V

    .line 283
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_3f} :catch_7f
    .catchall {:try_start_36 .. :try_end_3f} :catchall_76

    .line 291
    if-eqz v3, :cond_47

    .line 295
    :try_start_41
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V

    .line 296
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_47} :catch_6f
    .catchall {:try_start_41 .. :try_end_47} :catchall_5c

    .line 308
    :cond_47
    :goto_47
    monitor-exit v4

    return-void

    .line 285
    :catch_49
    move-exception v0

    move-object v2, v1

    .line 287
    :goto_4b
    :try_start_4b
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4e
    .catchall {:try_start_4b .. :try_end_4e} :catchall_79

    .line 291
    if-eqz v2, :cond_47

    .line 295
    :try_start_50
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 296
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_56} :catch_57
    .catchall {:try_start_50 .. :try_end_56} :catchall_5c

    goto :goto_47

    .line 300
    :catch_57
    move-exception v0

    .line 302
    :try_start_58
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_5c

    goto :goto_47

    .line 258
    :catchall_5c
    move-exception v0

    monitor-exit v4

    throw v0

    .line 290
    :catchall_5f
    move-exception v0

    move-object v3, v1

    .line 291
    :goto_61
    if-eqz v3, :cond_69

    .line 295
    :try_start_63
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 296
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_69} :catch_6a
    .catchall {:try_start_63 .. :try_end_69} :catchall_5c

    .line 305
    :cond_69
    :goto_69
    :try_start_69
    throw v0

    .line 300
    :catch_6a
    move-exception v1

    .line 302
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_69

    .line 300
    :catch_6f
    move-exception v0

    .line 302
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_73
    .catchall {:try_start_69 .. :try_end_73} :catchall_5c

    goto :goto_47

    .line 290
    :catchall_74
    move-exception v0

    goto :goto_61

    :catchall_76
    move-exception v0

    move-object v1, v2

    goto :goto_61

    :catchall_79
    move-exception v0

    move-object v3, v2

    goto :goto_61

    .line 285
    :catch_7c
    move-exception v0

    move-object v2, v3

    goto :goto_4b

    :catch_7f
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_4b
.end method

.method public static declared-synchronized a(Ljava/lang/String;Ljava/lang/String;[B)V
    .registers 8

    .prologue
    .line 364
    const-class v3, Lcom/duoku/platform/util/q;

    monitor-enter v3

    :try_start_3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 365
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_11

    .line 367
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 370
    :cond_11
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 371
    invoke-virtual {v4}, Ljava/io/File;->exists()Z
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_42

    move-result v0

    if-nez v0, :cond_30

    .line 373
    const/4 v2, 0x0

    .line 376
    :try_start_1d
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 378
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_25} :catch_32
    .catchall {:try_start_1d .. :try_end_25} :catchall_45

    .line 379
    :try_start_25
    invoke-virtual {v1, p2}, Ljava/io/FileOutputStream;->write([B)V

    .line 380
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_2b} :catch_59
    .catchall {:try_start_25 .. :try_end_2b} :catchall_57

    .line 393
    if-eqz v1, :cond_30

    .line 397
    :try_start_2d
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_52
    .catchall {:try_start_2d .. :try_end_30} :catchall_42

    .line 407
    :cond_30
    :goto_30
    monitor-exit v3

    return-void

    .line 387
    :catch_32
    move-exception v0

    move-object v1, v2

    .line 389
    :goto_34
    :try_start_34
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_57

    .line 393
    if-eqz v1, :cond_30

    .line 397
    :try_start_39
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3c} :catch_3d
    .catchall {:try_start_39 .. :try_end_3c} :catchall_42

    goto :goto_30

    .line 400
    :catch_3d
    move-exception v0

    .line 402
    :try_start_3e
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_42

    goto :goto_30

    .line 364
    :catchall_42
    move-exception v0

    monitor-exit v3

    throw v0

    .line 392
    :catchall_45
    move-exception v0

    move-object v1, v2

    .line 393
    :goto_47
    if-eqz v1, :cond_4c

    .line 397
    :try_start_49
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_4d
    .catchall {:try_start_49 .. :try_end_4c} :catchall_42

    .line 405
    :cond_4c
    :goto_4c
    :try_start_4c
    throw v0

    .line 400
    :catch_4d
    move-exception v1

    .line 402
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4c

    .line 400
    :catch_52
    move-exception v0

    .line 402
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_56
    .catchall {:try_start_4c .. :try_end_56} :catchall_42

    goto :goto_30

    .line 392
    :catchall_57
    move-exception v0

    goto :goto_47

    .line 387
    :catch_59
    move-exception v0

    goto :goto_34
.end method

.method public static a()Z
    .registers 3

    .prologue
    .line 71
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/k;->a()Lcom/baidu/bdgame/sdk/obf/k;

    move-result-object v0

    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/b;->c()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/duoku/platform/util/q$1;

    invoke-direct {v2}, Lcom/duoku/platform/util/q$1;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/k;->d(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/n;)Z

    move-result v0

    .line 92
    return v0
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 11

    .prologue
    const/4 v3, 0x1

    const/16 v6, 0x11

    const/4 v1, 0x0

    .line 617
    if-eqz p0, :cond_e

    const/16 v0, 0x12

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v0, v2, :cond_f

    .line 642
    :cond_e
    :goto_e
    return v1

    .line 621
    :cond_f
    invoke-virtual {p0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 622
    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 625
    new-array v6, v6, [I

    fill-array-data v6, :array_82

    .line 629
    const/16 v0, 0xb

    new-array v7, v0, [Ljava/lang/String;

    .line 630
    const-string v0, "1"

    aput-object v0, v7, v1

    const-string v0, "0"

    aput-object v0, v7, v3

    const/4 v0, 0x2

    const-string v2, "X"

    aput-object v2, v7, v0

    const/4 v0, 0x3

    const-string v2, "9"

    aput-object v2, v7, v0

    const/4 v0, 0x4

    const-string v2, "8"

    aput-object v2, v7, v0

    const/4 v0, 0x5

    const-string v2, "7"

    aput-object v2, v7, v0

    const/4 v0, 0x6

    const-string v2, "6"

    aput-object v2, v7, v0

    const/4 v0, 0x7

    const-string v2, "5"

    aput-object v2, v7, v0

    const/16 v0, 0x8

    const-string v2, "4"

    aput-object v2, v7, v0

    const/16 v0, 0x9

    const-string v2, "3"

    aput-object v2, v7, v0

    const/16 v0, 0xa

    const-string v2, "2"

    aput-object v2, v7, v0

    move v0, v1

    move v2, v1

    .line 632
    :goto_5a
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-lt v0, v8, :cond_6c

    .line 637
    rem-int/lit8 v0, v2, 0xb

    .line 638
    aget-object v0, v7, v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    move v1, v3

    .line 642
    goto :goto_e

    .line 634
    :cond_6c
    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/lit8 v8, v8, -0x30

    .line 635
    aget v9, v6, v0

    mul-int/2addr v8, v9

    add-int/2addr v2, v8

    .line 632
    add-int/lit8 v0, v0, 0x1

    goto :goto_5a

    .line 625
    nop

    :array_82
    .array-data 4
        0x7
        0x9
        0xa
        0x5
        0x8
        0x4
        0x2
        0x1
        0x6
        0x3
        0x7
        0x9
        0xa
        0x5
        0x8
        0x4
        0x2
    .end array-data
.end method

.method private static b(Ljava/lang/String;)Lcom/duoku/platform/bean/SynLoginUserInfo;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 740
    .line 741
    new-instance v0, Lcom/duoku/platform/util/a;

    invoke-direct {v0}, Lcom/duoku/platform/util/a;-><init>()V

    .line 742
    invoke-virtual {v0, p0}, Lcom/duoku/platform/util/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 744
    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_80

    .line 746
    new-instance v0, Lcom/duoku/platform/bean/SynLoginUserInfo;

    invoke-direct {v0}, Lcom/duoku/platform/bean/SynLoginUserInfo;-><init>()V

    .line 749
    :try_start_17
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 750
    const-string v2, "uid"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/duoku/platform/bean/SynLoginUserInfo;->setDkuid(Ljava/lang/String;)V

    .line 751
    const-string v2, "token"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/duoku/platform/bean/SynLoginUserInfo;->setDktoken(Ljava/lang/String;)V

    .line 752
    const-string v2, "username"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/duoku/platform/bean/SynLoginUserInfo;->setUsername(Ljava/lang/String;)V

    .line 753
    const-string v2, "bduserid"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/duoku/platform/bean/SynLoginUserInfo;->setBduid(Ljava/lang/String;)V

    .line 754
    const-string v2, "logintype"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 755
    packed-switch v2, :pswitch_data_82

    .line 781
    :goto_49
    const-string v2, "postbaidu91uid"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/duoku/platform/bean/SynLoginUserInfo;->setUid_91(Ljava/lang/String;)V

    .line 782
    const-string v2, "postbaidu91token"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/duoku/platform/bean/SynLoginUserInfo;->setToken_91(Ljava/lang/String;)V

    .line 783
    const-string v2, "baidu91ramseckey"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/duoku/platform/bean/SynLoginUserInfo;->setRamseckey_91(Ljava/lang/String;)V

    :goto_64
    move-object v1, v0

    .line 790
    :goto_65
    return-object v1

    .line 759
    :pswitch_66
    sget-object v2, Lcom/duoku/platform/bean/SynLoginUserInfo$LoginType;->USER_LOGINTYPE_VISITOR:Lcom/duoku/platform/bean/SynLoginUserInfo$LoginType;

    invoke-virtual {v0, v2}, Lcom/duoku/platform/bean/SynLoginUserInfo;->setLogintype(Lcom/duoku/platform/bean/SynLoginUserInfo$LoginType;)V

    goto :goto_49

    .line 785
    :catch_6c
    move-exception v0

    goto :goto_65

    .line 764
    :pswitch_6e
    sget-object v2, Lcom/duoku/platform/bean/SynLoginUserInfo$LoginType;->USER_LOGINTYPE_BAIDU:Lcom/duoku/platform/bean/SynLoginUserInfo$LoginType;

    invoke-virtual {v0, v2}, Lcom/duoku/platform/bean/SynLoginUserInfo;->setLogintype(Lcom/duoku/platform/bean/SynLoginUserInfo$LoginType;)V

    goto :goto_49

    .line 769
    :pswitch_74
    sget-object v2, Lcom/duoku/platform/bean/SynLoginUserInfo$LoginType;->USER_LOGINTYPE_DUOKU:Lcom/duoku/platform/bean/SynLoginUserInfo$LoginType;

    invoke-virtual {v0, v2}, Lcom/duoku/platform/bean/SynLoginUserInfo;->setLogintype(Lcom/duoku/platform/bean/SynLoginUserInfo$LoginType;)V

    goto :goto_49

    .line 774
    :pswitch_7a
    sget-object v2, Lcom/duoku/platform/bean/SynLoginUserInfo$LoginType;->USER_LOGINTYPE_91:Lcom/duoku/platform/bean/SynLoginUserInfo$LoginType;

    invoke-virtual {v0, v2}, Lcom/duoku/platform/bean/SynLoginUserInfo;->setLogintype(Lcom/duoku/platform/bean/SynLoginUserInfo$LoginType;)V
    :try_end_7f
    .catch Lorg/json/JSONException; {:try_start_17 .. :try_end_7f} :catch_6c

    goto :goto_49

    :cond_80
    move-object v0, v1

    goto :goto_64

    .line 755
    :pswitch_data_82
    .packed-switch 0x0
        :pswitch_66
        :pswitch_74
        :pswitch_7a
        :pswitch_6e
    .end packed-switch
.end method

.method public static b()Ljava/lang/String;
    .registers 1

    .prologue
    .line 192
    invoke-static {}, Lcom/duoku/platform/util/l;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 158
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static c(Ljava/lang/String;)Lcom/duoku/platform/bean/SynLoginUserInfo;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 795
    .line 796
    new-instance v0, Lcom/duoku/platform/util/a;

    invoke-direct {v0}, Lcom/duoku/platform/util/a;-><init>()V

    .line 797
    invoke-virtual {v0, p0}, Lcom/duoku/platform/util/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 800
    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_50

    .line 802
    new-instance v0, Lcom/duoku/platform/bean/SynLoginUserInfo;

    invoke-direct {v0}, Lcom/duoku/platform/bean/SynLoginUserInfo;-><init>()V

    .line 806
    :try_start_17
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 807
    const-string v2, "uid"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/duoku/platform/bean/SynLoginUserInfo;->setDkuid(Ljava/lang/String;)V

    .line 808
    const-string v2, "token"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/duoku/platform/bean/SynLoginUserInfo;->setDktoken(Ljava/lang/String;)V

    .line 809
    const-string v2, "username"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/duoku/platform/bean/SynLoginUserInfo;->setUsername(Ljava/lang/String;)V

    .line 811
    const-string v2, "logintype"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 812
    packed-switch v2, :pswitch_data_52

    :goto_40
    move-object v1, v0

    .line 840
    :goto_41
    :pswitch_41
    return-object v1

    .line 822
    :pswitch_42
    sget-object v2, Lcom/duoku/platform/bean/SynLoginUserInfo$LoginType;->USER_LOGINTYPE_BAIDU:Lcom/duoku/platform/bean/SynLoginUserInfo$LoginType;

    invoke-virtual {v0, v2}, Lcom/duoku/platform/bean/SynLoginUserInfo;->setLogintype(Lcom/duoku/platform/bean/SynLoginUserInfo$LoginType;)V

    goto :goto_40

    .line 835
    :catch_48
    move-exception v0

    goto :goto_41

    .line 828
    :pswitch_4a
    sget-object v2, Lcom/duoku/platform/bean/SynLoginUserInfo$LoginType;->USER_LOGINTYPE_DUOKU:Lcom/duoku/platform/bean/SynLoginUserInfo$LoginType;

    invoke-virtual {v0, v2}, Lcom/duoku/platform/bean/SynLoginUserInfo;->setLogintype(Lcom/duoku/platform/bean/SynLoginUserInfo$LoginType;)V
    :try_end_4f
    .catch Lorg/json/JSONException; {:try_start_17 .. :try_end_4f} :catch_48

    goto :goto_40

    :cond_50
    move-object v0, v1

    goto :goto_40

    .line 812
    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_4a
        :pswitch_42
        :pswitch_41
    .end packed-switch
.end method

.method public static c()Ljava/lang/String;
    .registers 3

    .prologue
    .line 203
    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/b;->c()Landroid/content/Context;

    move-result-object v0

    const-string v1, "channelid"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 205
    const-string v0, "channelid"

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 207
    if-nez v0, :cond_40

    .line 210
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/k;->a()Lcom/baidu/bdgame/sdk/obf/k;

    move-result-object v0

    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/duoku/platform/b;->c()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/baidu/bdgame/sdk/obf/k;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 211
    if-eqz v0, :cond_32

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 215
    :cond_32
    const-string v0, "13744"

    .line 217
    :cond_34
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 218
    const-string v2, "channelid"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 219
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 224
    :cond_40
    return-object v0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 168
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 170
    const-string v1, "dk_default_game_name"

    invoke-static {p0, v1}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 174
    :try_start_e
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 175
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e .. :try_end_1f} :catch_20

    .line 182
    :goto_1f
    return-object v0

    .line 177
    :catch_20
    move-exception v0

    .line 179
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move-object v0, v1

    goto :goto_1f
.end method

.method public static d()Ljava/lang/String;
    .registers 4

    .prologue
    .line 541
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z
    :try_end_7
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_7} :catch_32

    move-result v0

    if-nez v0, :cond_d

    .line 559
    :goto_a
    const-string v0, ""

    :goto_c
    return-object v0

    .line 543
    :cond_d
    :try_start_d
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    .line 544
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    :cond_17
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 546
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 547
    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v3

    if-nez v3, :cond_17

    .line 549
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;
    :try_end_30
    .catch Ljava/net/SocketException; {:try_start_d .. :try_end_30} :catch_32

    move-result-object v0

    goto :goto_c

    .line 554
    :catch_32
    move-exception v0

    goto :goto_a
.end method

.method public static d(Landroid/content/Context;)Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 570
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 571
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 572
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 573
    if-nez v0, :cond_15

    move v0, v1

    .line 582
    :goto_14
    return v0

    .line 575
    :cond_15
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_21

    move v0, v1

    .line 582
    goto :goto_14

    .line 575
    :cond_21
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 577
    iget-object v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v4, 0x64

    if-ne v0, v4, :cond_19

    .line 579
    const/4 v0, 0x1

    goto :goto_14
.end method

.method public static e()Lcom/duoku/platform/bean/SynLoginUserInfo;
    .registers 2

    .prologue
    .line 670
    const/4 v0, 0x0

    .line 672
    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/b;->c()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 674
    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/b;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/d/c;->a(Landroid/content/Context;)Lcom/duoku/platform/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/d/c;->a()Lcom/duoku/platform/bean/SynLoginUserInfo;

    move-result-object v0

    .line 677
    :cond_1b
    return-object v0
.end method

.method public static f()Lcom/duoku/platform/bean/SynLoginUserInfo;
    .registers 7

    .prologue
    .line 687
    const/4 v2, 0x0

    .line 688
    const-string v1, ""

    .line 689
    new-instance v0, Ljava/io/File;

    sget-object v3, Lcom/duoku/platform/util/q;->h:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 690
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_82

    .line 694
    :try_start_10
    new-instance v0, Ljava/io/FileInputStream;

    sget-object v3, Lcom/duoku/platform/util/q;->h:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 695
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 696
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    .line 697
    :goto_26
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_66

    .line 701
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 702
    invoke-static {v1}, Lcom/duoku/platform/util/q;->b(Ljava/lang/String;)Lcom/duoku/platform/bean/SynLoginUserInfo;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_32} :catch_7e

    move-result-object v0

    .line 710
    :goto_33
    if-nez v0, :cond_65

    .line 712
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/duoku/platform/util/q;->i:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 713
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_65

    .line 717
    :try_start_42
    new-instance v2, Ljava/io/FileInputStream;

    sget-object v3, Lcom/duoku/platform/util/q;->i:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 718
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 719
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    .line 720
    :goto_58
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_84

    .line 724
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 725
    invoke-static {v1}, Lcom/duoku/platform/util/q;->c(Ljava/lang/String;)Lcom/duoku/platform/bean/SynLoginUserInfo;
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_64} :catch_9c

    move-result-object v0

    .line 735
    :cond_65
    :goto_65
    return-object v0

    .line 699
    :cond_66
    :try_start_66
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_7c} :catch_7e

    move-result-object v1

    goto :goto_26

    .line 704
    :catch_7e
    move-exception v0

    .line 706
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_82
    move-object v0, v2

    goto :goto_33

    .line 722
    :cond_84
    :try_start_84
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\r\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_9a} :catch_9c

    move-result-object v1

    goto :goto_58

    .line 727
    :catch_9c
    move-exception v1

    .line 729
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_65
.end method
