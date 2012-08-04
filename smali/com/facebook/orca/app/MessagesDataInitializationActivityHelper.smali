.class public Lcom/facebook/orca/app/MessagesDataInitializationActivityHelper;
.super Lcom/facebook/orca/activity/AbstractFbActivityListener;
.source "MessagesDataInitializationActivityHelper.java"


# instance fields
.field private final a:Lcom/facebook/orca/app/MessagesDataInitLock;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/app/MessagesDataInitLock;)V
    .locals 0
    .parameter

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/facebook/orca/activity/AbstractFbActivityListener;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/facebook/orca/app/MessagesDataInitializationActivityHelper;->a:Lcom/facebook/orca/app/MessagesDataInitLock;

    .line 19
    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)V
    .locals 2
    .parameter

    .prologue
    .line 23
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.facebook.orca"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 28
    :goto_0
    return-void

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/app/MessagesDataInitializationActivityHelper;->a:Lcom/facebook/orca/app/MessagesDataInitLock;

    invoke-virtual {v0}, Lcom/facebook/orca/app/MessagesDataInitLock;->b()V

    goto :goto_0
.end method
