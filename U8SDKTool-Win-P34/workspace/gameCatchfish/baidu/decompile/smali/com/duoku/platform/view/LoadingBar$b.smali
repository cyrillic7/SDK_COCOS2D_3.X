.class Lcom/duoku/platform/view/LoadingBar$b;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/view/LoadingBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/view/LoadingBar;

.field private b:I

.field private c:Z

.field private d:Z

.field private volatile e:I


# direct methods
.method public constructor <init>(Lcom/duoku/platform/view/LoadingBar;)V
    .registers 3

    .prologue
    .line 186
    iput-object p1, p0, Lcom/duoku/platform/view/LoadingBar$b;->a:Lcom/duoku/platform/view/LoadingBar;

    .line 187
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 188
    const/4 v0, 0x0

    iput v0, p0, Lcom/duoku/platform/view/LoadingBar$b;->e:I

    .line 189
    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/view/LoadingBar$b;)I
    .registers 2

    .prologue
    .line 177
    iget v0, p0, Lcom/duoku/platform/view/LoadingBar$b;->e:I

    return v0
.end method


# virtual methods
.method public declared-synchronized a()V
    .registers 2

    .prologue
    .line 234
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput v0, p0, Lcom/duoku/platform/view/LoadingBar$b;->e:I

    .line 235
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/duoku/platform/view/LoadingBar$b;->d:Z

    .line 236
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_c

    .line 237
    monitor-exit p0

    return-void

    .line 234
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()V
    .registers 2

    .prologue
    .line 244
    monitor-enter p0

    const/4 v0, 0x3

    :try_start_2
    iput v0, p0, Lcom/duoku/platform/view/LoadingBar$b;->e:I

    .line 245
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/duoku/platform/view/LoadingBar$b;->c:Z
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 246
    monitor-exit p0

    return-void

    .line 244
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 193
    iput v1, p0, Lcom/duoku/platform/view/LoadingBar$b;->b:I

    .line 194
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/duoku/platform/view/LoadingBar$b;->c:Z

    .line 195
    iput-boolean v1, p0, Lcom/duoku/platform/view/LoadingBar$b;->d:Z

    .line 197
    :cond_8
    :goto_8
    :try_start_8
    iget-boolean v0, p0, Lcom/duoku/platform/view/LoadingBar$b;->c:Z

    if-nez v0, :cond_d

    .line 213
    :goto_c
    return-void

    .line 198
    :cond_d
    const-wide/16 v0, 0x12c

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 199
    iget-boolean v0, p0, Lcom/duoku/platform/view/LoadingBar$b;->d:Z

    if-eqz v0, :cond_1e

    .line 200
    monitor-enter p0
    :try_end_17
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_17} :catch_3c

    .line 201
    const/4 v0, 0x2

    :try_start_18
    iput v0, p0, Lcom/duoku/platform/view/LoadingBar$b;->e:I

    .line 202
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 200
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_18 .. :try_end_1e} :catchall_41

    .line 205
    :cond_1e
    :try_start_1e
    iget-object v0, p0, Lcom/duoku/platform/view/LoadingBar$b;->a:Lcom/duoku/platform/view/LoadingBar;

    invoke-static {v0}, Lcom/duoku/platform/view/LoadingBar;->a(Lcom/duoku/platform/view/LoadingBar;)Lcom/duoku/platform/view/LoadingBar$a;

    move-result-object v0

    iget v1, p0, Lcom/duoku/platform/view/LoadingBar$b;->b:I

    invoke-virtual {v0, v1}, Lcom/duoku/platform/view/LoadingBar$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 206
    iget v0, p0, Lcom/duoku/platform/view/LoadingBar$b;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/duoku/platform/view/LoadingBar$b;->b:I

    .line 207
    iget v0, p0, Lcom/duoku/platform/view/LoadingBar$b;->b:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_8

    .line 208
    const/4 v0, 0x0

    iput v0, p0, Lcom/duoku/platform/view/LoadingBar$b;->b:I
    :try_end_3b
    .catch Ljava/lang/InterruptedException; {:try_start_1e .. :try_end_3b} :catch_3c

    goto :goto_8

    .line 210
    :catch_3c
    move-exception v0

    .line 211
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_c

    .line 200
    :catchall_41
    move-exception v0

    :try_start_42
    monitor-exit p0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    :try_start_43
    throw v0
    :try_end_44
    .catch Ljava/lang/InterruptedException; {:try_start_43 .. :try_end_44} :catch_3c
.end method

.method public declared-synchronized start()V
    .registers 2

    .prologue
    .line 217
    monitor-enter p0

    :try_start_1
    invoke-super {p0}, Ljava/lang/Thread;->start()V

    .line 218
    const/4 v0, 0x1

    iput v0, p0, Lcom/duoku/platform/view/LoadingBar$b;->e:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 219
    monitor-exit p0

    return-void

    .line 217
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method
