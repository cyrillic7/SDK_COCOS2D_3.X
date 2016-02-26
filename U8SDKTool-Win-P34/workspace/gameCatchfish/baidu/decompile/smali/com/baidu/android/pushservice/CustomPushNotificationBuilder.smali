.class public Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;
.super Lcom/baidu/android/pushservice/PushNotificationBuilder;


# instance fields
.field private mLayoutIconDrawable:I

.field private mLayoutIconId:I

.field private mLayoutId:I

.field private mLayoutTextId:I

.field private mLayoutTitleId:I


# direct methods
.method public constructor <init>(IIII)V
    .registers 5

    invoke-direct {p0}, Lcom/baidu/android/pushservice/PushNotificationBuilder;-><init>()V

    iput p1, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mLayoutId:I

    iput p2, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mLayoutIconId:I

    iput p3, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mLayoutTitleId:I

    iput p4, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mLayoutTextId:I

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mStatusbarIcon:I

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mNotificationFlags:I

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mNotificationDefaults:I

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mNotificationsound:Ljava/lang/String;

    :cond_20
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    new-array v0, v1, [J

    iput-object v0, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mVibratePattern:[J

    const/4 v0, 0x0

    :goto_29
    if-ge v0, v1, :cond_36

    iget-object v2, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mVibratePattern:[J

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v4

    aput-wide v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    :cond_36
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mNotificationTitle:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mNotificationText:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mLayoutId:I

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mLayoutIconId:I

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mLayoutTitleId:I

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mLayoutTextId:I

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mLayoutIconDrawable:I

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iget v1, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mStatusbarIcon:I

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    iget v1, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mNotificationFlags:I

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    iget v1, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mNotificationDefaults:I

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    iget-object v1, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mNotificationsound:Ljava/lang/String;

    if-eqz v1, :cond_3a

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    iget-object v1, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mNotificationsound:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    :goto_21
    iget-object v1, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mVibratePattern:[J

    if-eqz v1, :cond_3e

    iget-object v1, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mVibratePattern:[J

    array-length v1, v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    :goto_2b
    iget-object v1, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mVibratePattern:[J

    array-length v1, v1

    if-ge v0, v1, :cond_41

    iget-object v1, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mVibratePattern:[J

    aget-wide v2, v1, v0

    invoke-virtual {p1, v2, v3}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    :cond_3a
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    goto :goto_21

    :cond_3e
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    :cond_41
    iget-object v0, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mNotificationTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mNotificationText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget v0, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mLayoutId:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    iget v0, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mLayoutIconId:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    iget v0, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mLayoutTitleId:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    iget v0, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mLayoutTextId:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    iget v0, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mLayoutIconDrawable:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    return-void
.end method


# virtual methods
.method public construct(Landroid/content/Context;)Landroid/app/Notification;
    .registers 6

    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iget v1, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mNotificationDefaults:I

    if-eqz v1, :cond_d

    iget v1, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mNotificationDefaults:I

    iput v1, v0, Landroid/app/Notification;->defaults:I

    :cond_d
    iget-object v1, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mNotificationsound:Ljava/lang/String;

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mNotificationsound:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    :cond_19
    iget-object v1, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mVibratePattern:[J

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mVibratePattern:[J

    iput-object v1, v0, Landroid/app/Notification;->vibrate:[J

    :cond_21
    iget v1, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mStatusbarIcon:I

    if-eqz v1, :cond_29

    iget v1, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mStatusbarIcon:I

    iput v1, v0, Landroid/app/Notification;->icon:I

    :cond_29
    iget v1, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mNotificationFlags:I

    if-eqz v1, :cond_31

    iget v1, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mNotificationFlags:I

    iput v1, v0, Landroid/app/Notification;->flags:I

    :cond_31
    iget v1, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mLayoutId:I

    if-eqz v1, :cond_64

    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mLayoutId:I

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iget v2, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mLayoutIconDrawable:I

    if-eqz v2, :cond_4b

    iget v2, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mLayoutIconId:I

    iget v3, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mLayoutIconDrawable:I

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    :cond_4b
    iget-object v2, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mNotificationTitle:Ljava/lang/String;

    if-eqz v2, :cond_56

    iget v2, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mLayoutTitleId:I

    iget-object v3, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mNotificationTitle:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :cond_56
    iget-object v2, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mNotificationText:Ljava/lang/String;

    if-eqz v2, :cond_61

    iget v2, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mLayoutTextId:I

    iget-object v3, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mNotificationText:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :cond_61
    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    :goto_63
    return-object v0

    :cond_64
    iget-object v1, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mNotificationTitle:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mNotificationTitle:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto :goto_63
.end method

.method public setLayoutDrawable(I)V
    .registers 2

    iput p1, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mLayoutIconDrawable:I

    return-void
.end method
