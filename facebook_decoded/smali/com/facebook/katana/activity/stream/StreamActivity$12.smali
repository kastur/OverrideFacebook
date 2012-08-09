.class Lcom/facebook/katana/activity/stream/StreamActivity$12;
.super Ljava/lang/Object;
.source "StreamActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/stream/StreamActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/stream/StreamActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 985
    iput-object p1, p0, Lcom/facebook/katana/activity/stream/StreamActivity$12;->a:Lcom/facebook/katana/activity/stream/StreamActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 988
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity$12;->a:Lcom/facebook/katana/activity/stream/StreamActivity;

    const/16 v1, 0x14

    invoke-static {v0, v1}, Lcom/facebook/katana/util/GrowthUtils;->a(Landroid/app/Activity;I)Z

    .line 990
    return-void
.end method
