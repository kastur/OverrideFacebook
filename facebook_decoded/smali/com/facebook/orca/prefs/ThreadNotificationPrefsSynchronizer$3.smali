.class Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer$3;
.super Ljava/lang/Object;
.source "ThreadNotificationPrefsSynchronizer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;


# direct methods
.method constructor <init>(Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;)V
    .locals 0
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer$3;->a:Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer$3;->a:Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;

    invoke-static {v0}, Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;->b(Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;)V

    .line 146
    return-void
.end method
