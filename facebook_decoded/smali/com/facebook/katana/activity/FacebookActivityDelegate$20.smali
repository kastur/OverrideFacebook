.class Lcom/facebook/katana/activity/FacebookActivityDelegate$20;
.super Ljava/lang/Object;
.source "FacebookActivityDelegate.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/FacebookActivityDelegate;)V
    .locals 0
    .parameter

    .prologue
    .line 2270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 2273
    const-string v0, "Intentional user-triggered soft error"

    const-string v1, "message accompanying user-triggered soft errorwith embedded new\nline."

    invoke-static {v0, v1}, Lcom/facebook/katana/util/ErrorReporting;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2276
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 2277
    return-void
.end method
