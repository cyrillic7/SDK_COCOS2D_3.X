.class public Lcom/baidu/android/pushservice/message/a/j;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/android/pushservice/message/a/j$1;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/baidu/android/pushservice/message/a/j;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/android/pushservice/message/a/j;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baidu/android/pushservice/message/a/j;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/android/pushservice/message/a/k;)Lcom/baidu/android/pushservice/message/a/c;
    .registers 6

    const/4 v0, 0x0

    sget-object v1, Lcom/baidu/android/pushservice/message/a/j$1;->a:[I

    invoke-virtual {p1}, Lcom/baidu/android/pushservice/message/a/k;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_7a

    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v1

    if-eqz v1, :cond_40

    sget-object v1, Lcom/baidu/android/pushservice/message/a/j;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>> Unknown msg_type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>> Unknown msg_type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/android/pushservice/util/f;->b(Ljava/lang/String;)V

    :cond_40
    :goto_40
    return-object v0

    :pswitch_41
    new-instance v0, Lcom/baidu/android/pushservice/message/a/f;

    iget-object v1, p0, Lcom/baidu/android/pushservice/message/a/j;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/baidu/android/pushservice/message/a/f;-><init>(Landroid/content/Context;)V

    goto :goto_40

    :pswitch_49
    new-instance v0, Lcom/baidu/android/pushservice/message/a/g;

    iget-object v1, p0, Lcom/baidu/android/pushservice/message/a/j;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/baidu/android/pushservice/message/a/g;-><init>(Landroid/content/Context;)V

    goto :goto_40

    :pswitch_51
    new-instance v0, Lcom/baidu/android/pushservice/message/a/h;

    iget-object v1, p0, Lcom/baidu/android/pushservice/message/a/j;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/baidu/android/pushservice/message/a/h;-><init>(Landroid/content/Context;)V

    goto :goto_40

    :pswitch_59
    new-instance v0, Lcom/baidu/android/pushservice/message/a/d;

    iget-object v1, p0, Lcom/baidu/android/pushservice/message/a/j;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/baidu/android/pushservice/message/a/d;-><init>(Landroid/content/Context;)V

    goto :goto_40

    :pswitch_61
    new-instance v0, Lcom/baidu/android/pushservice/message/a/l;

    iget-object v1, p0, Lcom/baidu/android/pushservice/message/a/j;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/baidu/android/pushservice/message/a/l;-><init>(Landroid/content/Context;)V

    goto :goto_40

    :pswitch_69
    new-instance v0, Lcom/baidu/android/pushservice/message/a/b;

    iget-object v1, p0, Lcom/baidu/android/pushservice/message/a/j;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/baidu/android/pushservice/message/a/b;-><init>(Landroid/content/Context;)V

    goto :goto_40

    :pswitch_71
    new-instance v0, Lcom/baidu/android/pushservice/message/a/a;

    iget-object v1, p0, Lcom/baidu/android/pushservice/message/a/j;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/baidu/android/pushservice/message/a/a;-><init>(Landroid/content/Context;)V

    goto :goto_40

    nop

    :pswitch_data_7a
    .packed-switch 0x1
        :pswitch_41
        :pswitch_41
        :pswitch_49
        :pswitch_51
        :pswitch_51
        :pswitch_59
        :pswitch_61
        :pswitch_69
        :pswitch_71
    .end packed-switch
.end method
