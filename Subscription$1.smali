.class Lcom/vaidilya/collegeconnect/activities/Subscription$1;
.super Landroid/text/style/ClickableSpan;
.source "Subscription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vaidilya/collegeconnect/activities/Subscription;->setupTermsClickable()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vaidilya/collegeconnect/activities/Subscription;


# direct methods
.method constructor <init>(Lcom/vaidilya/collegeconnect/activities/Subscription;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 103
    iput-object p1, p0, Lcom/vaidilya/collegeconnect/activities/Subscription$1;->this$0:Lcom/vaidilya/collegeconnect/activities/Subscription;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 106
    iget-object p1, p0, Lcom/vaidilya/collegeconnect/activities/Subscription$1;->this$0:Lcom/vaidilya/collegeconnect/activities/Subscription;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vaidilya/collegeconnect/activities/Subscription$1;->this$0:Lcom/vaidilya/collegeconnect/activities/Subscription;

    const-class v2, Lcom/vaidilya/collegeconnect/activities/TermsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Lcom/vaidilya/collegeconnect/activities/Subscription;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    .line 113
    const-string v0, "#2563EB"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    const/4 v0, 0x1

    .line 114
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    const/4 v0, 0x0

    .line 115
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    return-void
.end method
