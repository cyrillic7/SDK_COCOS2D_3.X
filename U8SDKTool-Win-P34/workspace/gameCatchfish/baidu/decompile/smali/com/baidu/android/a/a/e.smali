.class public Lcom/baidu/android/a/a/e;
.super Ljava/lang/Object;


# instance fields
.field private a:Z

.field private b:I

.field private c:Lcom/baidu/android/a/a/d;

.field private d:Ljava/nio/channels/Selector;

.field private e:Ljava/nio/channels/ServerSocketChannel;


# direct methods
.method public constructor <init>(Lcom/baidu/android/a/a/d;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/android/a/a/e;->a:Z

    iput-object p1, p0, Lcom/baidu/android/a/a/e;->c:Lcom/baidu/android/a/a/d;

    return-void
.end method

.method static synthetic a(Lcom/baidu/android/a/a/e;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/baidu/android/a/a/e;->c()V

    return-void
.end method

.method static synthetic a(Lcom/baidu/android/a/a/e;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/baidu/android/a/a/e;->a:Z

    return p1
.end method

.method static synthetic b(Lcom/baidu/android/a/a/e;)V
    .registers 1

    invoke-direct {p0}, Lcom/baidu/android/a/a/e;->d()V

    return-void
.end method

.method private c()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    const/16 v0, 0xc8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    :cond_7
    iget-object v0, p0, Lcom/baidu/android/a/a/e;->d:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->select()I

    iget-object v0, p0, Lcom/baidu/android/a/a/e;->d:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_16
    :goto_16
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_81

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SelectionKey;

    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    :try_start_25
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isAcceptable()Z

    move-result v1

    if-eqz v1, :cond_4d

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v1}, Ljava/nio/channels/ServerSocketChannel;->accept()Ljava/nio/channels/SocketChannel;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    iget-object v2, p0, Lcom/baidu/android/a/a/e;->d:Ljava/nio/channels/Selector;

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    move-result-object v1

    new-instance v2, Lcom/baidu/android/a/a/c;

    invoke-direct {v2}, Lcom/baidu/android/a/a/c;-><init>()V

    invoke-virtual {v1, v2}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/baidu/android/a/a/e;->c:Lcom/baidu/android/a/a/d;

    invoke-interface {v1, v2}, Lcom/baidu/android/a/a/d;->a(Lcom/baidu/android/a/a/c;)V

    :cond_4d
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isReadable()Z

    move-result v1

    if-eqz v1, :cond_c5

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/android/a/a/c;

    invoke-virtual {v2}, Lcom/baidu/android/a/a/c;->e()Z

    move-result v3

    if-nez v3, :cond_6b

    invoke-virtual {v2}, Lcom/baidu/android/a/a/c;->f()Z

    move-result v3

    if-eqz v3, :cond_86

    :cond_6b
    invoke-virtual {v2}, Lcom/baidu/android/a/a/c;->d()V

    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_71} :catch_72

    goto :goto_16

    :catch_72
    move-exception v1

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->cancel()V

    :try_start_76
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/SelectableChannel;->close()V
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_7d} :catch_115

    :cond_7d
    :goto_7d
    iget-boolean v0, p0, Lcom/baidu/android/a/a/e;->a:Z

    if-nez v0, :cond_16

    :cond_81
    iget-boolean v0, p0, Lcom/baidu/android/a/a/e;->a:Z

    if-nez v0, :cond_7

    return-void

    :cond_86
    :try_start_86
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move v3, v4

    :goto_8a
    invoke-virtual {v1, v5}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v7

    if-lez v7, :cond_9e

    invoke-virtual {v1, v5}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v2, v5}, Lcom/baidu/android/a/a/c;->a(Ljava/nio/ByteBuffer;)I

    add-int/2addr v3, v7

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_8a

    :cond_9e
    const/4 v8, -0x1

    if-ne v7, v8, :cond_a9

    invoke-virtual {v2}, Lcom/baidu/android/a/a/c;->d()V

    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->close()V

    goto/16 :goto_16

    :cond_a9
    if-eqz v3, :cond_16

    invoke-virtual {v2}, Lcom/baidu/android/a/a/c;->g()V

    if-eqz v3, :cond_c5

    invoke-virtual {v2}, Lcom/baidu/android/a/a/c;->b()Z

    move-result v1

    if-eqz v1, :cond_c5

    invoke-virtual {v2}, Lcom/baidu/android/a/a/c;->e()Z
    :try_end_b9
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_b9} :catch_72

    move-result v1

    if-nez v1, :cond_c1

    :try_start_bc
    iget-object v1, p0, Lcom/baidu/android/a/a/e;->c:Lcom/baidu/android/a/a/d;

    invoke-interface {v1, v2}, Lcom/baidu/android/a/a/d;->b(Lcom/baidu/android/a/a/c;)V
    :try_end_c1
    .catch Ljava/lang/Exception; {:try_start_bc .. :try_end_c1} :catch_eb
    .catch Ljava/io/IOException; {:try_start_bc .. :try_end_c1} :catch_72

    :cond_c1
    :goto_c1
    const/4 v1, 0x4

    :try_start_c2
    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    :cond_c5
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isWritable()Z

    move-result v1

    if-eqz v1, :cond_7d

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/android/a/a/c;

    invoke-virtual {v2}, Lcom/baidu/android/a/a/c;->e()Z

    move-result v3

    if-nez v3, :cond_e3

    invoke-virtual {v2}, Lcom/baidu/android/a/a/c;->f()Z

    move-result v3

    if-eqz v3, :cond_f2

    :cond_e3
    invoke-virtual {v2}, Lcom/baidu/android/a/a/c;->d()V

    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->close()V

    goto/16 :goto_16

    :catch_eb
    move-exception v1

    iget-object v3, p0, Lcom/baidu/android/a/a/e;->c:Lcom/baidu/android/a/a/d;

    invoke-interface {v3, v2, v1}, Lcom/baidu/android/a/a/d;->a(Lcom/baidu/android/a/a/c;Ljava/lang/Exception;)V

    goto :goto_c1

    :cond_f2
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v2, v5}, Lcom/baidu/android/a/a/c;->b(Ljava/nio/ByteBuffer;)I

    move-result v3

    if-lez v3, :cond_16

    invoke-virtual {v2}, Lcom/baidu/android/a/a/c;->g()V

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v1, v5}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I

    invoke-virtual {v2}, Lcom/baidu/android/a/a/c;->c()Z

    move-result v3

    if-eqz v3, :cond_7d

    invoke-virtual {v2}, Lcom/baidu/android/a/a/c;->d()V

    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_113
    .catch Ljava/io/IOException; {:try_start_c2 .. :try_end_113} :catch_72

    goto/16 :goto_7d

    :catch_115
    move-exception v0

    goto/16 :goto_7d
.end method

.method private d()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/baidu/android/a/a/e;->d:Ljava/nio/channels/Selector;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/baidu/android/a/a/e;->d:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/android/a/a/e;->d:Ljava/nio/channels/Selector;

    :cond_c
    iget-object v0, p0, Lcom/baidu/android/a/a/e;->e:Ljava/nio/channels/ServerSocketChannel;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/baidu/android/a/a/e;->e:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/android/a/a/e;->e:Ljava/nio/channels/ServerSocketChannel;

    :cond_18
    iget-boolean v0, p0, Lcom/baidu/android/a/a/e;->a:Z

    if-eqz v0, :cond_24

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/android/a/a/e;->a:Z

    iget v0, p0, Lcom/baidu/android/a/a/e;->b:I

    invoke-virtual {p0, v0}, Lcom/baidu/android/a/a/e;->a(I)Z
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_24} :catch_25

    :cond_24
    :goto_24
    return-void

    :catch_25
    move-exception v0

    goto :goto_24
.end method


# virtual methods
.method public a()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/android/a/a/e;->a:Z

    return-void
.end method

.method public a(I)Z
    .registers 7

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput p1, p0, Lcom/baidu/android/a/a/e;->b:I

    iget-boolean v2, p0, Lcom/baidu/android/a/a/e;->a:Z

    if-eqz v2, :cond_9

    :goto_8
    return v0

    :cond_9
    :try_start_9
    invoke-static {}, Ljava/nio/channels/ServerSocketChannel;->open()Ljava/nio/channels/ServerSocketChannel;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/android/a/a/e;->e:Ljava/nio/channels/ServerSocketChannel;

    iget-object v2, p0, Lcom/baidu/android/a/a/e;->e:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v2}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v2

    new-instance v3, Ljava/net/InetSocketAddress;

    iget v4, p0, Lcom/baidu/android/a/a/e;->b:I

    invoke-direct {v3, v4}, Ljava/net/InetSocketAddress;-><init>(I)V

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/net/ServerSocket;->setReuseAddress(Z)V

    invoke-virtual {v2, v3}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    iget-object v2, p0, Lcom/baidu/android/a/a/e;->e:Ljava/nio/channels/ServerSocketChannel;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/channels/ServerSocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/android/a/a/e;->d:Ljava/nio/channels/Selector;

    iget-object v2, p0, Lcom/baidu/android/a/a/e;->e:Ljava/nio/channels/ServerSocketChannel;

    iget-object v3, p0, Lcom/baidu/android/a/a/e;->d:Ljava/nio/channels/Selector;

    const/16 v4, 0x10

    invoke-virtual {v2, v3, v4}, Ljava/nio/channels/ServerSocketChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_38} :catch_45

    new-instance v2, Lcom/baidu/android/a/a/f;

    invoke-direct {v2, p0}, Lcom/baidu/android/a/a/f;-><init>(Lcom/baidu/android/a/a/e;)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v2, v1}, Lcom/baidu/android/a/a/f;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iput-boolean v0, p0, Lcom/baidu/android/a/a/e;->a:Z

    goto :goto_8

    :catch_45
    move-exception v0

    move v0, v1

    goto :goto_8
.end method

.method public b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/android/a/a/e;->a:Z

    return v0
.end method
