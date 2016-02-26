.class final Lcom/tencent/map/b/f$c;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/map/b/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field private synthetic a:Lcom/tencent/map/b/f;


# direct methods
.method public constructor <init>(Lcom/tencent/map/b/f;)V
    .registers 3

    iput-object p1, p0, Lcom/tencent/map/b/f$c;->a:Lcom/tencent/map/b/f;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_8a

    :cond_5
    :goto_5
    return-void

    :sswitch_6
    iget-object v1, p0, Lcom/tencent/map/b/f$c;->a:Lcom/tencent/map/b/f;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/tencent/map/b/e$b;

    invoke-static {v1, v0}, Lcom/tencent/map/b/f;->a(Lcom/tencent/map/b/f;Lcom/tencent/map/b/e$b;)V

    goto :goto_5

    :sswitch_10
    iget-object v1, p0, Lcom/tencent/map/b/f$c;->a:Lcom/tencent/map/b/f;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/tencent/map/b/d$b;

    invoke-static {v1, v0}, Lcom/tencent/map/b/f;->a(Lcom/tencent/map/b/f;Lcom/tencent/map/b/d$b;)V

    goto :goto_5

    :sswitch_1a
    iget-object v1, p0, Lcom/tencent/map/b/f$c;->a:Lcom/tencent/map/b/f;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/tencent/map/b/g$b;

    invoke-static {v1, v0}, Lcom/tencent/map/b/f;->a(Lcom/tencent/map/b/f;Lcom/tencent/map/b/g$b;)V

    goto :goto_5

    :sswitch_24
    iget-object v0, p0, Lcom/tencent/map/b/f$c;->a:Lcom/tencent/map/b/f;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/tencent/map/b/f;->a(Lcom/tencent/map/b/f;I)V

    goto :goto_5

    :sswitch_2c
    iget-object v0, p0, Lcom/tencent/map/b/f$c;->a:Lcom/tencent/map/b/f;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/tencent/map/b/f;->b(Lcom/tencent/map/b/f;I)V

    goto :goto_5

    :sswitch_34
    iget-object v1, p0, Lcom/tencent/map/b/f$c;->a:Lcom/tencent/map/b/f;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/location/Location;

    invoke-static {v1, v0}, Lcom/tencent/map/b/f;->a(Lcom/tencent/map/b/f;Landroid/location/Location;)V

    goto :goto_5

    :sswitch_3e
    iget-object v0, p0, Lcom/tencent/map/b/f$c;->a:Lcom/tencent/map/b/f;

    invoke-static {v0}, Lcom/tencent/map/b/f;->e(Lcom/tencent/map/b/f;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/tencent/map/b/f$c;->a:Lcom/tencent/map/b/f;

    invoke-static {v0}, Lcom/tencent/map/b/f;->c(Lcom/tencent/map/b/f;)V

    goto :goto_5

    :sswitch_4d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/tencent/map/b/f$c;->a:Lcom/tencent/map/b/f;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/tencent/map/b/f;->a(Lcom/tencent/map/b/f;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/map/b/f$c;->a:Lcom/tencent/map/b/f;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/map/b/f;->a(Lcom/tencent/map/b/f;Lcom/tencent/map/b/f$a;)Lcom/tencent/map/b/f$a;

    goto :goto_5

    :sswitch_61
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_6f

    iget-object v1, p0, Lcom/tencent/map/b/f$c;->a:Lcom/tencent/map/b/f;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/tencent/map/b/f;->b(Lcom/tencent/map/b/f;Ljava/lang/String;)V

    goto :goto_5

    :cond_6f
    iget-object v0, p0, Lcom/tencent/map/b/f$c;->a:Lcom/tencent/map/b/f;

    invoke-static {v0}, Lcom/tencent/map/b/f;->f(Lcom/tencent/map/b/f;)Lcom/tencent/map/b/e$b;

    move-result-object v0

    if-eqz v0, :cond_83

    iget-object v0, p0, Lcom/tencent/map/b/f$c;->a:Lcom/tencent/map/b/f;

    invoke-static {v0}, Lcom/tencent/map/b/f;->f(Lcom/tencent/map/b/f;)Lcom/tencent/map/b/e$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/map/b/e$b;->a()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_83
    iget-object v0, p0, Lcom/tencent/map/b/f$c;->a:Lcom/tencent/map/b/f;

    invoke-static {v0}, Lcom/tencent/map/b/f;->g(Lcom/tencent/map/b/f;)V

    goto/16 :goto_5

    :sswitch_data_8a
    .sparse-switch
        0x1 -> :sswitch_6
        0x2 -> :sswitch_10
        0x3 -> :sswitch_1a
        0x4 -> :sswitch_24
        0x5 -> :sswitch_2c
        0x6 -> :sswitch_34
        0x8 -> :sswitch_61
        0x10 -> :sswitch_4d
        0x100 -> :sswitch_3e
    .end sparse-switch
.end method
