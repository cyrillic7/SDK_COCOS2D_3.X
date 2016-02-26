.class public Lcom/baidu/android/pushservice/e;
.super Ljava/lang/Object;


# instance fields
.field protected a:I

.field protected b:I

.field protected c:I

.field protected d:Landroid/net/Uri;

.field protected e:[J

.field protected f:Ljava/lang/String;

.field protected g:Ljava/lang/String;

.field protected h:Z

.field private final i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/android/pushservice/e;->h:Z

    iput-object p1, p0, Lcom/baidu/android/pushservice/e;->i:Ljava/lang/String;

    return-void
.end method

.method private a(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .registers 9

    const/4 v5, 0x0

    const/high16 v4, 0x42400000

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_33

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_14
    invoke-static {v1, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float v3, v4, v2

    float-to-int v3, v3

    mul-float/2addr v2, v4

    float-to-int v2, v2

    invoke-virtual {p1, v5, v5, v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0

    :cond_33
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_14
.end method

.method static synthetic a(Lcom/baidu/android/pushservice/e;Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/baidu/android/pushservice/e;->a(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/android/pushservice/e;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/android/pushservice/e;->i:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .registers 2

    iput p1, p0, Lcom/baidu/android/pushservice/e;->a:I

    return-void
.end method

.method public a(Landroid/content/Context;Landroid/app/PendingIntent;Ljava/lang/String;)V
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const-string v0, "bpush_lapp_notification_status_icon"

    invoke-static {p1, v0}, Lcom/baidu/android/pushservice/c;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_29

    invoke-virtual {p0, v0}, Lcom/baidu/android/pushservice/e;->a(I)V

    :goto_b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_30

    iget-object v0, p0, Lcom/baidu/android/pushservice/e;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_30

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/baidu/android/pushservice/f;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/baidu/android/pushservice/f;-><init>(Lcom/baidu/android/pushservice/e;Landroid/content/Context;Landroid/app/PendingIntent;Ljava/lang/String;)V

    const-string v2, "DownNotiIcon"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_28
    :goto_28
    return-void

    :cond_29
    const v0, 0x1080074

    invoke-virtual {p0, v0}, Lcom/baidu/android/pushservice/e;->a(I)V

    goto :goto_b

    :cond_30
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    iget-boolean v0, p0, Lcom/baidu/android/pushservice/e;->h:Z

    if-eqz v0, :cond_67

    const/4 v0, 0x0

    iput v0, v1, Landroid/app/Notification;->defaults:I

    :cond_3c
    :goto_3c
    iget v0, p0, Lcom/baidu/android/pushservice/e;->a:I

    if-eqz v0, :cond_44

    iget v0, p0, Lcom/baidu/android/pushservice/e;->a:I

    iput v0, v1, Landroid/app/Notification;->icon:I

    :cond_44
    iget v0, p0, Lcom/baidu/android/pushservice/e;->b:I

    if-eqz v0, :cond_4c

    iget v0, p0, Lcom/baidu/android/pushservice/e;->b:I

    iput v0, v1, Landroid/app/Notification;->flags:I

    :cond_4c
    iget-object v0, p0, Lcom/baidu/android/pushservice/e;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/android/pushservice/e;->g:Ljava/lang/String;

    invoke-virtual {v1, p1, v0, v2, p2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    if-eqz v1, :cond_28

    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object p2, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-static {p3}, Lcom/baidu/android/pushservice/util/f;->d(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_28

    :cond_67
    const/4 v0, -0x1

    iput v0, v1, Landroid/app/Notification;->defaults:I

    iget v0, p0, Lcom/baidu/android/pushservice/e;->c:I

    if-eqz v0, :cond_72

    iget v0, p0, Lcom/baidu/android/pushservice/e;->c:I

    iput v0, v1, Landroid/app/Notification;->defaults:I

    :cond_72
    iget-object v0, p0, Lcom/baidu/android/pushservice/e;->d:Landroid/net/Uri;

    if-eqz v0, :cond_7a

    iget-object v0, p0, Lcom/baidu/android/pushservice/e;->d:Landroid/net/Uri;

    iput-object v0, v1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    :cond_7a
    iget-object v0, p0, Lcom/baidu/android/pushservice/e;->e:[J

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/baidu/android/pushservice/e;->e:[J

    iput-object v0, v1, Landroid/app/Notification;->vibrate:[J

    goto :goto_3c
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/android/pushservice/e;->f:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/baidu/android/pushservice/e;->h:Z

    return-void
.end method

.method public b(I)V
    .registers 2

    iput p1, p0, Lcom/baidu/android/pushservice/e;->b:I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/android/pushservice/e;->g:Ljava/lang/String;

    return-void
.end method

.method public c(I)V
    .registers 2

    iput p1, p0, Lcom/baidu/android/pushservice/e;->c:I

    return-void
.end method
