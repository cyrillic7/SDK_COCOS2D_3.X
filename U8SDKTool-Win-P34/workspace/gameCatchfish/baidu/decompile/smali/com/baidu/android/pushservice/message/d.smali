.class public abstract Lcom/baidu/android/pushservice/message/d;
.super Ljava/lang/Object;


# instance fields
.field protected a:Landroid/content/Context;

.field private b:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/baidu/android/pushservice/message/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/baidu/android/pushservice/message/d;->b:Ljava/util/LinkedList;

    iput-object p1, p0, Lcom/baidu/android/pushservice/message/d;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public abstract a([BI)Lcom/baidu/android/pushservice/message/e;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public a()Ljava/util/LinkedList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/baidu/android/pushservice/message/e;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/android/pushservice/message/d;->b:Ljava/util/LinkedList;

    return-object v0
.end method

.method public abstract a(I)V
.end method

.method public a(Lcom/baidu/android/pushservice/message/e;)V
    .registers 4

    iget-object v1, p0, Lcom/baidu/android/pushservice/message/d;->b:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/baidu/android/pushservice/message/d;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/baidu/android/pushservice/message/d;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    return-void

    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public abstract b()V
.end method

.method public abstract b(Lcom/baidu/android/pushservice/message/e;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract c()V
.end method
