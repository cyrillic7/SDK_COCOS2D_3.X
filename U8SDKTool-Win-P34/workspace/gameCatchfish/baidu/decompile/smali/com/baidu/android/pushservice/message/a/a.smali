.class public Lcom/baidu/android/pushservice/message/a/a;
.super Lcom/baidu/android/pushservice/message/a/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/android/pushservice/message/a/a$1;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/baidu/android/pushservice/message/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/android/pushservice/message/a/a;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/baidu/android/pushservice/message/a/c;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;[B)I
    .registers 9

    const/4 v0, 0x0

    invoke-static {p2, p1, p3}, Lcom/baidu/android/pushservice/message/a/i;->a(Ljava/lang/String;Ljava/lang/String;[B)Lcom/baidu/android/pushservice/message/PublicMsg;

    move-result-object v1

    if-eqz v1, :cond_2b

    iget-object v2, p0, Lcom/baidu/android/pushservice/message/a/a;->a:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/baidu/android/pushservice/c/d;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/baidu/android/pushservice/c/d;

    move-result-object v2

    sget-object v3, Lcom/baidu/android/pushservice/message/a/a$1;->a:[I

    invoke-virtual {v2}, Lcom/baidu/android/pushservice/c/d;->a()Lcom/baidu/android/pushservice/c/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/baidu/android/pushservice/c/c;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_52

    iget-object v1, p0, Lcom/baidu/android/pushservice/message/a/a;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/android/pushservice/a;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2b

    sget-object v1, Lcom/baidu/android/pushservice/message/a/a;->b:Ljava/lang/String;

    const-string v2, ">>> no push client receive advertise message"

    invoke-static {v1, v2}, Lcom/baidu/frontia/a/b/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2b
    :goto_2b
    return v0

    :pswitch_2c
    iget-object v0, v2, Lcom/baidu/android/pushservice/c/d;->a:Lcom/baidu/android/pushservice/c/h;

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/c/h;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/baidu/android/pushservice/message/PublicMsg;->mPkgName:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/android/pushservice/message/a/a;->a:Landroid/content/Context;

    invoke-static {v0, v1, p2, p1}, Lcom/baidu/android/pushservice/message/a/e;->b(Landroid/content/Context;Lcom/baidu/android/pushservice/message/PublicMsg;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/baidu/android/pushservice/message/a/a;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/android/pushservice/a;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2b

    sget-object v1, Lcom/baidu/android/pushservice/message/a/a;->b:Ljava/lang/String;

    const-string v2, ">>> Show pMsg private Notification!"

    invoke-static {v1, v2}, Lcom/baidu/frontia/a/b/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ">>> Show pMsg private Notification!"

    iget-object v2, p0, Lcom/baidu/android/pushservice/message/a/a;->a:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/baidu/android/pushservice/util/f;->a(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_2b

    nop

    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_2c
    .end packed-switch
.end method
