.class Landroid/support/v4/media/IMediaBrowserServiceCallbacksAdapterApi21;
.super Ljava/lang/Object;
.source "IMediaBrowserServiceCallbacksAdapterApi21.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/IMediaBrowserServiceCallbacksAdapterApi21$Stub;
    }
.end annotation


# instance fields
.field private mAsBinderMethod:Ljava/lang/reflect/Method;

.field mCallbackObject:Ljava/lang/Object;

.field private mOnConnectFailedMethod:Ljava/lang/reflect/Method;

.field private mOnConnectMethod:Ljava/lang/reflect/Method;

.field private mOnLoadChildrenMethod:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 9
    .param p1, "callbackObject"    # Ljava/lang/Object;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Landroid/support/v4/media/IMediaBrowserServiceCallbacksAdapterApi21;->mCallbackObject:Ljava/lang/Object;

    .line 42
    :try_start_5
    const-string v3, "android.service.media.IMediaBrowserServiceCallbacks"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 43
    .local v2, "theClass":Ljava/lang/Class;
    const-string v3, "android.content.pm.ParceledListSlice"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 44
    .local v1, "parceledListSliceClass":Ljava/lang/Class;
    const-string v3, "asBinder"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v4/media/IMediaBrowserServiceCallbacksAdapterApi21;->mAsBinderMethod:Ljava/lang/reflect/Method;

    .line 45
    const-string v3, "onConnect"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Landroid/media/session/MediaSession$Token;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-class v6, Landroid/os/Bundle;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v4/media/IMediaBrowserServiceCallbacksAdapterApi21;->mOnConnectMethod:Ljava/lang/reflect/Method;

    .line 47
    const-string v3, "onConnectFailed"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v4/media/IMediaBrowserServiceCallbacksAdapterApi21;->mOnConnectFailedMethod:Ljava/lang/reflect/Method;

    .line 48
    const-string v3, "onLoadChildren"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v4/media/IMediaBrowserServiceCallbacksAdapterApi21;->mOnLoadChildrenMethod:Ljava/lang/reflect/Method;
    :try_end_54
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_54} :catch_55
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_54} :catch_5a

    .line 53
    .end local v1    # "parceledListSliceClass":Ljava/lang/Class;
    .end local v2    # "theClass":Ljava/lang/Class;
    :goto_54
    return-void

    .line 50
    :catch_55
    move-exception v0

    .line 51
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_56
    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    goto :goto_54

    .line 50
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_5a
    move-exception v0

    goto :goto_56
.end method


# virtual methods
.method asBinder()Landroid/os/IBinder;
    .registers 7

    .prologue
    .line 56
    const/4 v2, 0x0

    .line 58
    .local v2, "result":Landroid/os/IBinder;
    :try_start_1
    iget-object v3, p0, Landroid/support/v4/media/IMediaBrowserServiceCallbacksAdapterApi21;->mAsBinderMethod:Ljava/lang/reflect/Method;

    iget-object v4, p0, Landroid/support/v4/media/IMediaBrowserServiceCallbacksAdapterApi21;->mCallbackObject:Ljava/lang/Object;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/os/IBinder;

    move-object v2, v0
    :try_end_10
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_10} :catch_11
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_10} :catch_16

    .line 62
    :goto_10
    return-object v2

    .line 59
    :catch_11
    move-exception v1

    .line 60
    .local v1, "e":Ljava/lang/ReflectiveOperationException;
    :goto_12
    invoke-virtual {v1}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    goto :goto_10

    .line 59
    .end local v1    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_16
    move-exception v1

    goto :goto_12
.end method

.method onConnect(Ljava/lang/String;Ljava/lang/Object;Landroid/os/Bundle;)V
    .registers 9
    .param p1, "root"    # Ljava/lang/String;
    .param p2, "session"    # Ljava/lang/Object;
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 67
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/IMediaBrowserServiceCallbacksAdapterApi21;->mOnConnectMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Landroid/support/v4/media/IMediaBrowserServiceCallbacksAdapterApi21;->mCallbackObject:Ljava/lang/Object;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_13
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_13} :catch_14
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_13} :catch_19

    .line 71
    :goto_13
    return-void

    .line 68
    :catch_14
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_15
    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    goto :goto_13

    .line 68
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_19
    move-exception v0

    goto :goto_15
.end method

.method onConnectFailed()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 75
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/IMediaBrowserServiceCallbacksAdapterApi21;->mOnConnectFailedMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Landroid/support/v4/media/IMediaBrowserServiceCallbacksAdapterApi21;->mCallbackObject:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_a} :catch_b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_a} :catch_10

    .line 79
    :goto_a
    return-void

    .line 76
    :catch_b
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_c
    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    goto :goto_a

    .line 76
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_10
    move-exception v0

    goto :goto_c
.end method

.method onLoadChildren(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 8
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "parceledListSliceObj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 83
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/IMediaBrowserServiceCallbacksAdapterApi21;->mOnLoadChildrenMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Landroid/support/v4/media/IMediaBrowserServiceCallbacksAdapterApi21;->mCallbackObject:Ljava/lang/Object;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_10} :catch_11
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_10} :catch_16

    .line 87
    :goto_10
    return-void

    .line 84
    :catch_11
    move-exception v0

    .line 85
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_12
    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    goto :goto_10

    .line 84
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_16
    move-exception v0

    goto :goto_12
.end method
