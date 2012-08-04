.class public Lcom/facebook/katana/activity/messages/BaseUserSelectionListener;
.super Ljava/lang/Object;
.source "BaseUserSelectionListener.java"

# interfaces
.implements Lcom/facebook/katana/activity/messages/UserSelectionListener;


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/facebook/katana/activity/messages/BaseUserSelectionListener;->a:Landroid/content/Context;

    .line 19
    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 2
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/facebook/katana/activity/messages/BaseUserSelectionListener;->a:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Lcom/facebook/katana/util/ApplicationUtils;->a(Landroid/content/Context;JLcom/facebook/katana/model/FacebookProfile;)V

    .line 24
    return-void
.end method
