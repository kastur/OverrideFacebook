.class public Lcom/facebook/katana/ProfileInfoActivity$InfoAppSessionListener;
.super Lcom/facebook/katana/activity/ProfileFacebookListActivity$FBListActivityAppSessionListener;
.source "ProfileInfoActivity.java"


# instance fields
.field private synthetic a:Lcom/facebook/katana/ProfileInfoActivity;


# direct methods
.method protected constructor <init>(Lcom/facebook/katana/ProfileInfoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 26
    iput-object p1, p0, Lcom/facebook/katana/ProfileInfoActivity$InfoAppSessionListener;->a:Lcom/facebook/katana/ProfileInfoActivity;

    invoke-direct {p0, p1}, Lcom/facebook/katana/activity/ProfileFacebookListActivity$FBListActivityAppSessionListener;-><init>(Lcom/facebook/katana/activity/ProfileFacebookListActivity;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/facebook/katana/ProfileInfoActivity$InfoAppSessionListener;->a:Lcom/facebook/katana/ProfileInfoActivity;

    iget-object v0, v0, Lcom/facebook/katana/ProfileInfoActivity;->e:Lcom/facebook/katana/ProfileInfoAdapter;

    invoke-virtual {v0}, Lcom/facebook/katana/ProfileInfoAdapter;->a()V

    .line 32
    iget-object v0, p0, Lcom/facebook/katana/ProfileInfoActivity$InfoAppSessionListener;->a:Lcom/facebook/katana/ProfileInfoActivity;

    invoke-virtual {v0}, Lcom/facebook/katana/ProfileInfoActivity;->i()V

    .line 33
    return-void
.end method
