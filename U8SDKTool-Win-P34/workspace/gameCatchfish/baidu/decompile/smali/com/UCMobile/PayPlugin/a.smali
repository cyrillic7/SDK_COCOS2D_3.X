.class final Lcom/UCMobile/PayPlugin/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field final synthetic a:Lcom/UCMobile/PayPlugin/PluginSurfaceView;


# direct methods
.method constructor <init>(Lcom/UCMobile/PayPlugin/PluginSurfaceView;)V
    .registers 2

    iput-object p1, p0, Lcom/UCMobile/PayPlugin/a;->a:Lcom/UCMobile/PayPlugin/PluginSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 8

    iget-object v0, p0, Lcom/UCMobile/PayPlugin/a;->a:Lcom/UCMobile/PayPlugin/PluginSurfaceView;

    invoke-static {v0}, Lcom/UCMobile/PayPlugin/PluginSurfaceView;->a(Lcom/UCMobile/PayPlugin/PluginSurfaceView;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/UCMobile/PayPlugin/a;->a:Lcom/UCMobile/PayPlugin/PluginSurfaceView;

    invoke-static {v0}, Lcom/UCMobile/PayPlugin/PluginSurfaceView;->b(Lcom/UCMobile/PayPlugin/PluginSurfaceView;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/UCMobile/PayPlugin/a;->a:Lcom/UCMobile/PayPlugin/PluginSurfaceView;

    iget-object v2, p0, Lcom/UCMobile/PayPlugin/a;->a:Lcom/UCMobile/PayPlugin/PluginSurfaceView;

    invoke-static {v2}, Lcom/UCMobile/PayPlugin/PluginSurfaceView;->c(Lcom/UCMobile/PayPlugin/PluginSurfaceView;)I

    move-result v2

    invoke-static {v0, v2, p2, p3, p4}, Lcom/UCMobile/PayPlugin/PluginSurfaceView;->a(Lcom/UCMobile/PayPlugin/PluginSurfaceView;IIII)V

    :cond_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_1c

    return-void

    :catchall_1c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 5

    iget-object v0, p0, Lcom/UCMobile/PayPlugin/a;->a:Lcom/UCMobile/PayPlugin/PluginSurfaceView;

    invoke-static {v0}, Lcom/UCMobile/PayPlugin/PluginSurfaceView;->a(Lcom/UCMobile/PayPlugin/PluginSurfaceView;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/UCMobile/PayPlugin/a;->a:Lcom/UCMobile/PayPlugin/PluginSurfaceView;

    invoke-static {v0}, Lcom/UCMobile/PayPlugin/PluginSurfaceView;->b(Lcom/UCMobile/PayPlugin/PluginSurfaceView;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/UCMobile/PayPlugin/a;->a:Lcom/UCMobile/PayPlugin/PluginSurfaceView;

    iget-object v2, p0, Lcom/UCMobile/PayPlugin/a;->a:Lcom/UCMobile/PayPlugin/PluginSurfaceView;

    invoke-static {v2}, Lcom/UCMobile/PayPlugin/PluginSurfaceView;->c(Lcom/UCMobile/PayPlugin/PluginSurfaceView;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/UCMobile/PayPlugin/PluginSurfaceView;->a(Lcom/UCMobile/PayPlugin/PluginSurfaceView;I)V

    :cond_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_1c

    return-void

    :catchall_1c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 5

    iget-object v0, p0, Lcom/UCMobile/PayPlugin/a;->a:Lcom/UCMobile/PayPlugin/PluginSurfaceView;

    invoke-static {v0}, Lcom/UCMobile/PayPlugin/PluginSurfaceView;->a(Lcom/UCMobile/PayPlugin/PluginSurfaceView;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/UCMobile/PayPlugin/a;->a:Lcom/UCMobile/PayPlugin/PluginSurfaceView;

    invoke-static {v0}, Lcom/UCMobile/PayPlugin/PluginSurfaceView;->b(Lcom/UCMobile/PayPlugin/PluginSurfaceView;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/UCMobile/PayPlugin/a;->a:Lcom/UCMobile/PayPlugin/PluginSurfaceView;

    iget-object v2, p0, Lcom/UCMobile/PayPlugin/a;->a:Lcom/UCMobile/PayPlugin/PluginSurfaceView;

    invoke-static {v2}, Lcom/UCMobile/PayPlugin/PluginSurfaceView;->c(Lcom/UCMobile/PayPlugin/PluginSurfaceView;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/UCMobile/PayPlugin/PluginSurfaceView;->b(Lcom/UCMobile/PayPlugin/PluginSurfaceView;I)V

    :cond_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_1c

    return-void

    :catchall_1c
    move-exception v0

    monitor-exit v1

    throw v0
.end method
