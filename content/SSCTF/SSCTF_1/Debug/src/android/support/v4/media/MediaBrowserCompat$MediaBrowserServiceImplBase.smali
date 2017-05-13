.class Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;
.super Ljava/lang/Object;
.source "MediaBrowserCompat.java"

# interfaces
.implements Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImpl;
.implements Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MediaBrowserServiceImplBase"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase$MediaServiceConnection;
    }
.end annotation


# static fields
.field private static final CONNECT_STATE_CONNECTED:I = 0x2

.field private static final CONNECT_STATE_CONNECTING:I = 0x1

.field private static final CONNECT_STATE_DISCONNECTED:I = 0x0

.field private static final CONNECT_STATE_SUSPENDED:I = 0x3

.field private static final DBG:Z


# instance fields
.field private final mCallback:Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;

.field private mCallbacksMessenger:Landroid/os/Messenger;

.field private final mContext:Landroid/content/Context;

.field private mExtras:Landroid/os/Bundle;

.field private final mHandler:Landroid/support/v4/media/MediaBrowserCompat$CallbackHandler;

.field private mMediaSessionToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

.field private final mRootHints:Landroid/os/Bundle;

.field private mRootId:Ljava/lang/String;

.field private mServiceBinderWrapper:Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;

.field private final mServiceComponent:Landroid/content/ComponentName;

.field private mServiceConnection:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase$MediaServiceConnection;

.field private mState:I

.field private final mSubscriptions:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/v4/media/MediaBrowserCompat$Subscription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;Landroid/os/Bundle;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceComponent"    # Landroid/content/ComponentName;
    .param p3, "callback"    # Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;
    .param p4, "rootHints"    # Landroid/os/Bundle;

    .prologue
    .line 720
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 708
    new-instance v0, Landroid/support/v4/media/MediaBrowserCompat$CallbackHandler;

    invoke-direct {v0, p0}, Landroid/support/v4/media/MediaBrowserCompat$CallbackHandler;-><init>(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;)V

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->mHandler:Landroid/support/v4/media/MediaBrowserCompat$CallbackHandler;

    .line 709
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->mSubscriptions:Landroid/support/v4/util/ArrayMap;

    .line 711
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->mState:I

    .line 721
    if-nez p1, :cond_1e

    .line 722
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 724
    :cond_1e
    if-nez p2, :cond_28

    .line 725
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "service component must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 727
    :cond_28
    if-nez p3, :cond_32

    .line 728
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "connection callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 730
    :cond_32
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->mContext:Landroid/content/Context;

    .line 731
    iput-object p2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->mServiceComponent:Landroid/content/ComponentName;

    .line 732
    iput-object p3, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->mCallback:Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;

    .line 733
    iput-object p4, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->mRootHints:Landroid/os/Bundle;

    .line 734
    return-void
.end method

.method static synthetic access$1100(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;)Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;
    .registers 2
    .param p0, "x0"    # Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;

    .prologue
    .line 695
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->mServiceBinderWrapper:Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;

    return-object v0
.end method

.method static synthetic access$1102(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;)Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;
    .registers 2
    .param p0, "x0"    # Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;
    .param p1, "x1"    # Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;

    .prologue
    .line 695
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->mServiceBinderWrapper:Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;

    return-object p1
.end method

.method static synthetic access$1200(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;)Landroid/os/Messenger;
    .registers 2
    .param p0, "x0"    # Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;

    .prologue
    .line 695
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->mCallbacksMessenger:Landroid/os/Messenger;

    return-object v0
.end method

.method static synthetic access$1202(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;Landroid/os/Messenger;)Landroid/os/Messenger;
    .registers 2
    .param p0, "x0"    # Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;
    .param p1, "x1"    # Landroid/os/Messenger;

    .prologue
    .line 695
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->mCallbacksMessenger:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$1300(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;)Landroid/support/v4/media/MediaBrowserCompat$CallbackHandler;
    .registers 2
    .param p0, "x0"    # Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;

    .prologue
    .line 695
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->mHandler:Landroid/support/v4/media/MediaBrowserCompat$CallbackHandler;

    return-object v0
.end method

.method static synthetic access$1400(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;)I
    .registers 2
    .param p0, "x0"    # Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;

    .prologue
    .line 695
    iget v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->mState:I

    return v0
.end method

.method static synthetic access$1402(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;I)I
    .registers 2
    .param p0, "x0"    # Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;
    .param p1, "x1"    # I

    .prologue
    .line 695
    iput p1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->mState:I

    return p1
.end method

.method static synthetic access$1500(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;

    .prologue
    .line 695
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;)Landroid/os/Bundle;
    .registers 2
    .param p0, "x0"    # Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;

    .prologue
    .line 695
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->mRootHints:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$1700(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;)Landroid/content/ComponentName;
    .registers 2
    .param p0, "x0"    # Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;

    .prologue
    .line 695
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->mServiceComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$700(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;)Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase$MediaServiceConnection;
    .registers 2
    .param p0, "x0"    # Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;

    .prologue
    .line 695
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->mServiceConnection:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase$MediaServiceConnection;

    return-object v0
.end method

.method static synthetic access$800(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;)V
    .registers 1
    .param p0, "x0"    # Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;

    .prologue
    .line 695
    invoke-direct {p0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->forceCloseConnection()V

    return-void
.end method

.method static synthetic access$900(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;)Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;
    .registers 2
    .param p0, "x0"    # Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;

    .prologue
    .line 695
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->mCallback:Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;

    return-object v0
.end method

.method private forceCloseConnection()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 828
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->mServiceConnection:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase$MediaServiceConnection;

    if-eqz v0, :cond_c

    .line 829
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->mServiceConnection:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase$MediaServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 831
    :cond_c
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->mState:I

    .line 832
    iput-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->mServiceConnection:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase$MediaServiceConnection;

    .line 833
    iput-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->mServiceBinderWrapper:Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;

    .line 834
    iput-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->mCallbacksMessenger:Landroid/os/Messenger;

    .line 835
    iput-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->mRootId:Ljava/lang/String;

    .line 836
    iput-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->mMediaSessionToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 837
    return-void
.end method

.method private static getStateLabel(I)Ljava/lang/String;
    .registers 3
    .param p0, "state"    # I

    .prologue
    .line 1062
    packed-switch p0, :pswitch_data_24

    .line 1072
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_16
    return-object v0

    .line 1064
    :pswitch_17
    const-string v0, "CONNECT_STATE_DISCONNECTED"

    goto :goto_16

    .line 1066
    :pswitch_1a
    const-string v0, "CONNECT_STATE_CONNECTING"

    goto :goto_16

    .line 1068
    :pswitch_1d
    const-string v0, "CONNECT_STATE_CONNECTED"

    goto :goto_16

    .line 1070
    :pswitch_20
    const-string v0, "CONNECT_STATE_SUSPENDED"

    goto :goto_16

    .line 1062
    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_17
        :pswitch_1a
        :pswitch_1d
        :pswitch_20
    .end packed-switch
.end method

.method private isCurrent(Landroid/os/Messenger;Ljava/lang/String;)Z
    .registers 6
    .param p1, "callback"    # Landroid/os/Messenger;
    .param p2, "funcName"    # Ljava/lang/String;

    .prologue
    .line 1080
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->mCallbacksMessenger:Landroid/os/Messenger;

    if-eq v0, p1, :cond_3e

    .line 1081
    iget v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->mState:I

    if-eqz v0, :cond_3c

    .line 1082
    const-string v0, "MediaBrowserCompat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->mServiceComponent:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with mCallbacksMessenger="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->mCallbacksMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    :cond_3c
    const/4 v0, 0x0

    .line 1087
    :goto_3d
    return v0

    :cond_3e
    const/4 v0, 0x1

    goto :goto_3d
.end method


# virtual methods
.method public connect()V
    .registers 8

    .prologue
    const/4 v5, 0x1

    .line 737
    iget v4, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->mState:I

    if-eqz v4, :cond_2a

    .line 738
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "connect() called while not disconnected (state="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->mState:I

    invoke-static {v6}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->getStateLabel(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 748
    :cond_2a
    iget-object v4, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->mServiceBinderWrapper:Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;

    if-eqz v4, :cond_49

    .line 749
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mServiceBinderWrapper should be null. Instead it is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->mServiceBinderWrapper:Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 752
    :cond_49
    iget-object v4, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->mCallbacksMessenger:Landroid/os/Messenger;

    if-eqz v4, :cond_68

    .line 753
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mCallbacksMessenger should be null. Instead it is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->mCallbacksMessenger:Landroid/os/Messenger;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 757
    :cond_68
    iput v5, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->mState:I

    .line 759
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.media.browse.MediaBrowserService"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 760
    .local v2, "intent":Landroid/content/Intent;
    iget-object v4, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->mServiceComponent:Landroid/content/ComponentName;

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 762
    new-instance v3, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase$MediaServiceConnection;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase$MediaServiceConnection;-><init>(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;Landroid/support/v4/media/MediaBrowserCompat$1;)V

    iput-object v3, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->mServiceConnection:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase$MediaServiceConnection;

    .line 765
    .local v3, "thisConnection":Landroid/content/ServiceConnection;
    const/4 v0, 0x0

    .line 767
    .local v0, "bound":Z
    :try_start_7f
    iget-object v4, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->mContext:Landroid/content/Context;

    iget-object v5, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->mServiceConnection:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase$MediaServiceConnection;

    const/4 v6, 0x1

    invoke-virtual {v4, v2, v5, v6}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_87} :catch_95

    move-result v0

    .line 772
    :goto_88
    if-nez v0, :cond_94

    .line 778
    iget-object v4, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->mHandler:Landroid/support/v4/media/MediaBrowserCompat$CallbackHandler;

    new-instance v5, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase$1;

    invoke-direct {v5, p0, v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase$1;-><init>(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;Landroid/content/ServiceConnection;)V

    invoke-virtual {v4, v5}, Landroid/support/v4/media/MediaBrowserCompat$CallbackHandler;->post(Ljava/lang/Runnable;)Z

    .line 794
    :cond_94
    return-void

    .line 768
    :catch_95
    move-exception v1

    .line 769
    .local v1, "ex":Ljava/lang/Exception;
    const-string v4, "MediaBrowserCompat"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed binding to service "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->mServiceComponent:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_88
.end method

.method public disconnect()V
    .registers 5

    .prologue
    .line 800
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->mCallbacksMessenger:Landroid/os/Messenger;

    if-eqz v1, :cond_b

    .line 802
    :try_start_4
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->mServiceBinderWrapper:Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->mCallbacksMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, v2}, Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;->disconnect(Landroid/os/Messenger;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_f

    .line 809
    :cond_b
    :goto_b
    invoke-direct {p0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->forceCloseConnection()V

    .line 815
    return-void

    .line 803
    :catch_f
    move-exception v0

    .line 806
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "MediaBrowserCompat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException during connect for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->mServiceComponent:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method

.method dump()V
    .registers 4

    .prologue
    .line 1095
    const-string v0, "MediaBrowserCompat"

    const-string v1, "MediaBrowserCompat..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    const-string v0, "MediaBrowserCompat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mServiceComponent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->mServiceComponent:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    const-string v0, "MediaBrowserCompat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCallback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->mCallback:Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    const-string v0, "MediaBrowserCompat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mRootHints="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->mRootHints:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    const-string v0, "MediaBrowserCompat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->mState:I

    invoke-static {v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->getStateLabel(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    const-string v0, "MediaBrowserCompat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mServiceConnection="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->mServiceConnection:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase$MediaServiceConnection;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    const-string v0, "MediaBrowserCompat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mServiceBinderWrapper="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->mServiceBinderWrapper:Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    const-string v0, "MediaBrowserCompat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCallbacksMessenger="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->mCallbacksMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    const-string v0, "MediaBrowserCompat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mRootId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->mRootId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    const-string v0, "MediaBrowserCompat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mMediaSessionToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->mMediaSessionToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    return-void
.end method

.method public getExtras()Landroid/os/Bundle;
    .registers 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 862
    invoke-virtual {p0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->isConnected()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 863
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getExtras() called while not connected (state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->mState:I

    invoke-static {v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->getStateLabel(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 866
    :cond_2b
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getItem(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;)V
    .registers 7
    .param p1, "mediaId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "cb"    # Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 934
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 935
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "mediaId is empty."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 937
    :cond_e
    if-nez p2, :cond_18

    .line 938
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "cb is null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 940
    :cond_18
    iget v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->mState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2f

    .line 941
    const-string v2, "MediaBrowserCompat"

    const-string v3, "Not connected, unable to retrieve the MediaItem."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->mHandler:Landroid/support/v4/media/MediaBrowserCompat$CallbackHandler;

    new-instance v3, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase$2;

    invoke-direct {v3, p0, p2, p1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase$2;-><init>(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/media/MediaBrowserCompat$CallbackHandler;->post(Ljava/lang/Runnable;)Z

    .line 962
    :goto_2e
    return-void

    .line 950
    :cond_2f
    new-instance v1, Landroid/support/v4/media/MediaBrowserCompat$ItemReceiver;

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->mHandler:Landroid/support/v4/media/MediaBrowserCompat$CallbackHandler;

    invoke-direct {v1, p1, p2, v2}, Landroid/support/v4/media/MediaBrowserCompat$ItemReceiver;-><init>(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;Landroid/os/Handler;)V

    .line 952
    .local v1, "receiver":Landroid/support/v4/os/ResultReceiver;
    :try_start_36
    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->mServiceBinderWrapper:Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;

    invoke-virtual {v2, p1, v1}, Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;->getMediaItem(Ljava/lang/String;Landroid/support/v4/os/ResultReceiver;)V
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_3b} :catch_3c

    goto :goto_2e

    .line 953
    :catch_3c
    move-exception v0

    .line 954
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "MediaBrowserCompat"

    const-string v3, "Remote error getting media item."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->mHandler:Landroid/support/v4/media/MediaBrowserCompat$CallbackHandler;

    new-instance v3, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase$3;

    invoke-direct {v3, p0, p2, p1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase$3;-><init>(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/media/MediaBrowserCompat$CallbackHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2e
.end method

.method public getRoot()Ljava/lang/String;
    .registers 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 853
    invoke-virtual {p0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->isConnected()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 854
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRoot() called while not connected(state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->mState:I

    invoke-static {v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->getStateLabel(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 857
    :cond_2b
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->mRootId:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceComponent()Landroid/content/ComponentName;
    .registers 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 845
    invoke-virtual {p0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->isConnected()Z

    move-result v0

    if-nez v0, :cond_27

    .line 846
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getServiceComponent() called while not connected (state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 849
    :cond_27
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->mServiceComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .registers 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 870
    invoke-virtual {p0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->isConnected()Z

    move-result v0

    if-nez v0, :cond_27

    .line 871
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSessionToken() called while not connected(state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 874
    :cond_27
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->mMediaSessionToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    return-object v0
.end method

.method public isConnected()Z
    .registers 3

    .prologue
    .line 840
    iget v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public onConnectionFailed(Landroid/os/Messenger;)V
    .registers 5
    .param p1, "callback"    # Landroid/os/Messenger;

    .prologue
    .line 1006
    const-string v0, "MediaBrowserCompat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConnectFailed for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->mServiceComponent:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    const-string v0, "onConnectFailed"

    invoke-direct {p0, p1, v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->isCurrent(Landroid/os/Messenger;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 1024
    :goto_22
    return-void

    .line 1013
    :cond_23
    iget v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4d

    .line 1014
    const-string v0, "MediaBrowserCompat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConnect from service while mState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->mState:I

    invoke-static {v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->getStateLabel(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "... ignoring"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    .line 1020
    :cond_4d
    invoke-direct {p0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->forceCloseConnection()V

    .line 1023
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->mCallback:Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;->onConnectionFailed()V

    goto :goto_22
.end method

.method public onLoadChildren(Landroid/os/Messenger;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V
    .registers 9
    .param p1, "callback"    # Landroid/os/Messenger;
    .param p2, "parentId"    # Ljava/lang/String;
    .param p3, "list"    # Ljava/util/List;
    .param p4, "options"    # Landroid/os/Bundle;

    .prologue
    .line 1029
    const-string v3, "onLoadChildren"

    invoke-direct {p0, p1, v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->isCurrent(Landroid/os/Messenger;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 1056
    :cond_8
    :goto_8
    return-void

    .line 1033
    :cond_9
    move-object v0, p3

    .line 1039
    .local v0, "data":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/MediaBrowserCompat$MediaItem;>;"
    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->mSubscriptions:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v3, p2}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/media/MediaBrowserCompat$Subscription;

    .line 1040
    .local v1, "subscription":Landroid/support/v4/media/MediaBrowserCompat$Subscription;
    if-eqz v1, :cond_8

    .line 1048
    invoke-virtual {v1, p4}, Landroid/support/v4/media/MediaBrowserCompat$Subscription;->getCallback(Landroid/os/Bundle;)Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;

    move-result-object v2

    .line 1049
    .local v2, "subscriptionCallback":Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;
    if-eqz v2, :cond_8

    .line 1050
    if-nez p4, :cond_20

    .line 1051
    invoke-virtual {v2, p2, v0}, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;->onChildrenLoaded(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_8

    .line 1053
    :cond_20
    invoke-virtual {v2, p2, v0, p4}, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;->onChildrenLoaded(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V

    goto :goto_8
.end method

.method public onServiceConnected(Landroid/os/Messenger;Ljava/lang/String;Landroid/support/v4/media/session/MediaSessionCompat$Token;Landroid/os/Bundle;)V
    .registers 15
    .param p1, "callback"    # Landroid/os/Messenger;
    .param p2, "root"    # Ljava/lang/String;
    .param p3, "session"    # Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .param p4, "extra"    # Landroid/os/Bundle;

    .prologue
    .line 967
    const-string v7, "onConnect"

    invoke-direct {p0, p1, v7}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->isCurrent(Landroid/os/Messenger;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 1003
    :cond_8
    :goto_8
    return-void

    .line 971
    :cond_9
    iget v7, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->mState:I

    const/4 v8, 0x1

    if-eq v7, v8, :cond_33

    .line 972
    const-string v7, "MediaBrowserCompat"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onConnect from service while mState="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->mState:I

    invoke-static {v9}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->getStateLabel(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "... ignoring"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 976
    :cond_33
    iput-object p2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->mRootId:Ljava/lang/String;

    .line 977
    iput-object p3, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->mMediaSessionToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 978
    iput-object p4, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->mExtras:Landroid/os/Bundle;

    .line 979
    const/4 v7, 0x2

    iput v7, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->mState:I

    .line 985
    iget-object v7, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->mCallback:Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;

    invoke-virtual {v7}, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;->onConnected()V

    .line 991
    :try_start_41
    iget-object v7, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->mSubscriptions:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v7}, Landroid/support/v4/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 992
    .local v6, "subscriptionEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/support/v4/media/MediaBrowserCompat$Subscription;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 993
    .local v3, "id":Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/media/MediaBrowserCompat$Subscription;

    .line 994
    .local v5, "sub":Landroid/support/v4/media/MediaBrowserCompat$Subscription;
    invoke-virtual {v5}, Landroid/support/v4/media/MediaBrowserCompat$Subscription;->getOptionsList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_6b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 995
    .local v4, "options":Landroid/os/Bundle;
    iget-object v7, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->mServiceBinderWrapper:Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v8, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->mCallbacksMessenger:Landroid/os/Messenger;

    invoke-virtual {v7, v3, v4, v8}, Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;->addSubscription(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Messenger;)V
    :try_end_7e
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_7e} :catch_7f

    goto :goto_6b

    .line 998
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "id":Ljava/lang/String;
    .end local v4    # "options":Landroid/os/Bundle;
    .end local v5    # "sub":Landroid/support/v4/media/MediaBrowserCompat$Subscription;
    .end local v6    # "subscriptionEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/support/v4/media/MediaBrowserCompat$Subscription;>;"
    :catch_7f
    move-exception v0

    .line 1001
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v7, "MediaBrowserCompat"

    const-string v8, "addSubscription failed with RemoteException."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8
.end method

.method public subscribe(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;)V
    .registers 9
    .param p1, "parentId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "callback"    # Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 880
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 881
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "parentId is empty."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 883
    :cond_e
    if-nez p3, :cond_18

    .line 884
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "callback is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 887
    :cond_18
    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->mSubscriptions:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/media/MediaBrowserCompat$Subscription;

    .line 888
    .local v1, "sub":Landroid/support/v4/media/MediaBrowserCompat$Subscription;
    if-nez v1, :cond_2c

    .line 889
    new-instance v1, Landroid/support/v4/media/MediaBrowserCompat$Subscription;

    .end local v1    # "sub":Landroid/support/v4/media/MediaBrowserCompat$Subscription;
    invoke-direct {v1}, Landroid/support/v4/media/MediaBrowserCompat$Subscription;-><init>()V

    .line 890
    .restart local v1    # "sub":Landroid/support/v4/media/MediaBrowserCompat$Subscription;
    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->mSubscriptions:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v2, p1, v1}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 892
    :cond_2c
    invoke-virtual {v1, p3, p2}, Landroid/support/v4/media/MediaBrowserCompat$Subscription;->setCallbackForOptions(Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;Landroid/os/Bundle;)V

    .line 896
    iget v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->mState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3b

    .line 898
    :try_start_34
    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->mServiceBinderWrapper:Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->mCallbacksMessenger:Landroid/os/Messenger;

    invoke-virtual {v2, p1, p2, v3}, Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;->addSubscription(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Messenger;)V
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_3b} :catch_3c

    .line 905
    :cond_3b
    :goto_3b
    return-void

    .line 899
    :catch_3c
    move-exception v0

    .line 902
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "MediaBrowserCompat"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addSubscription failed with RemoteException parentId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b
.end method

.method public unsubscribe(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 8
    .param p1, "parentId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "options"    # Landroid/os/Bundle;

    .prologue
    .line 909
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 910
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "parentId is empty."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 914
    :cond_e
    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->mSubscriptions:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/media/MediaBrowserCompat$Subscription;

    .line 917
    .local v1, "sub":Landroid/support/v4/media/MediaBrowserCompat$Subscription;
    if-eqz v1, :cond_2a

    invoke-virtual {v1, p2}, Landroid/support/v4/media/MediaBrowserCompat$Subscription;->remove(Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_2a

    iget v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->mState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2a

    .line 919
    :try_start_23
    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->mServiceBinderWrapper:Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->mCallbacksMessenger:Landroid/os/Messenger;

    invoke-virtual {v2, p1, p2, v3}, Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;->removeSubscription(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Messenger;)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_2a} :catch_38

    .line 928
    :cond_2a
    :goto_2a
    if-eqz v1, :cond_37

    invoke-virtual {v1}, Landroid/support/v4/media/MediaBrowserCompat$Subscription;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_37

    .line 929
    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->mSubscriptions:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 931
    :cond_37
    return-void

    .line 921
    :catch_38
    move-exception v0

    .line 924
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "MediaBrowserCompat"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeSubscription failed with RemoteException parentId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a
.end method
