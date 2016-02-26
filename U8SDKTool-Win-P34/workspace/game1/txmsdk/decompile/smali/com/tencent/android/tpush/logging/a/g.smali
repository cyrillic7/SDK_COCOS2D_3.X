.class public Lcom/tencent/android/tpush/logging/a/g;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field private a:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field private b:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object v0, p0, Lcom/tencent/android/tpush/logging/a/g;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 35
    iput-object v0, p0, Lcom/tencent/android/tpush/logging/a/g;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 39
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/tencent/android/tpush/logging/a/g;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 40
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/android/tpush/logging/a/g;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 41
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/tencent/android/tpush/logging/a/g;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;)I
    .registers 4

    .prologue
    .line 52
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 54
    iget-object v1, p0, Lcom/tencent/android/tpush/logging/a/g;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object v1, p0, Lcom/tencent/android/tpush/logging/a/g;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v0

    return v0
.end method

.method public a(Ljava/io/Writer;[C)V
    .registers 13

    .prologue
    const/4 v5, 0x0

    .line 74
    if-eqz p1, :cond_10

    if-eqz p2, :cond_10

    array-length v0, p2

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/tencent/android/tpush/logging/a/g;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_11

    .line 137
    :cond_10
    :goto_10
    return-void

    .line 85
    :cond_11
    array-length v6, p2

    .line 92
    :try_start_12
    invoke-virtual {p0}, Lcom/tencent/android/tpush/logging/a/g;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v1, v5

    move v3, v6

    :goto_18
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 96
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    move v4, v1

    move v8, v5

    .line 100
    :goto_2a
    if-lez v2, :cond_46

    .line 103
    if-le v3, v2, :cond_44

    move v1, v2

    .line 105
    :goto_2f
    add-int v7, v8, v1

    invoke-virtual {v0, v8, v7, p2, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 107
    sub-int v7, v3, v1

    .line 108
    add-int v3, v4, v1

    .line 110
    sub-int/2addr v2, v1

    .line 111
    add-int/2addr v1, v8

    .line 113
    if-nez v7, :cond_57

    .line 115
    const/4 v3, 0x0

    invoke-virtual {p1, p2, v3, v6}, Ljava/io/Writer;->write([CII)V

    move v4, v5

    move v3, v6

    move v8, v1

    .line 118
    goto :goto_2a

    :cond_44
    move v1, v3

    .line 103
    goto :goto_2f

    :cond_46
    move v1, v4

    .line 118
    goto :goto_18

    .line 125
    :cond_48
    if-lez v1, :cond_4e

    .line 127
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, v1}, Ljava/io/Writer;->write([CII)V

    .line 131
    :cond_4e
    invoke-virtual {p1}, Ljava/io/Writer;->flush()V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_51} :catch_52

    goto :goto_10

    .line 133
    :catch_52
    move-exception v0

    .line 135
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_10

    :cond_57
    move v4, v3

    move v8, v1

    move v3, v7

    goto :goto_2a
.end method

.method public b()V
    .registers 3

    .prologue
    .line 154
    iget-object v0, p0, Lcom/tencent/android/tpush/logging/a/g;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 156
    iget-object v0, p0, Lcom/tencent/android/tpush/logging/a/g;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 157
    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/tencent/android/tpush/logging/a/g;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
