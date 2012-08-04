.class final Lcom/facebook/katana/provider/NotificationsProvider$1;
.super Ljava/lang/Object;
.source "NotificationsProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/content/Context;

.field private synthetic b:Lcom/facebook/katana/provider/NotificationsLastUpdatedListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/facebook/katana/provider/NotificationsLastUpdatedListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 374
    iput-object p1, p0, Lcom/facebook/katana/provider/NotificationsProvider$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/katana/provider/NotificationsProvider$1;->b:Lcom/facebook/katana/provider/NotificationsLastUpdatedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    const-wide/16 v3, -0x1

    .line 377
    iget-object v0, p0, Lcom/facebook/katana/provider/NotificationsProvider$1;->a:Landroid/content/Context;

    const-string v1, "com.facebook.katana.provider.NotificationsProvider"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 379
    const-string v1, "last_updated_time"

    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 380
    invoke-static {}, Lcom/facebook/katana/provider/NotificationsProvider;->c()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v2

    invoke-virtual {v2, v3, v4, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    .line 381
    iget-object v0, p0, Lcom/facebook/katana/provider/NotificationsProvider$1;->b:Lcom/facebook/katana/provider/NotificationsLastUpdatedListener;

    invoke-static {}, Lcom/facebook/katana/provider/NotificationsProvider;->c()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->longValue()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/facebook/katana/provider/NotificationsLastUpdatedListener;->a(J)V

    .line 382
    return-void
.end method
